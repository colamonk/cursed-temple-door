extends Node2D

@onready var main_menu: Node2D = $MainMenu
@onready var guessing_scene: Node2D = $GuessingScene
@onready var events_data: Node2D = $EventsData
@onready var intro_scene: Node2D = $IntroScene

var text_scroll_scene := preload("res://scenes/text_scroll_scene.tscn")
var num_attemps : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	intro_scene.hide()
	guessing_scene.hide()
	main_menu.show()
	print("hello world")
	pass # Replace with function body.


func _on_main_menu_start_new_game() -> void:
	num_attemps = 0
	intro_scene.load_first_line(events_data.get_intro(), "intro")
	main_menu.hide()
	intro_scene.show()
	pass # Replace with function body.


func handle_scene_end(endscene : String):
	# figure out what to do based on which scene just ended
	match endscene:
		"intro":
			# open guesser
			# intro is a text_scroll instance so it hides itself after emitting signal
			guessing_scene.show()
			pass
		"guess":
			# if scene is guesser,  go death or win
			var guessverdict = guessing_scene.guessverdict
			var guessval = guessing_scene.guessval
			if guessverdict == "was correct":
				win_screen(guessval) # func will show the death scene after loading
				pass # win
			else:
				# if was invalid, don't add an attempt
				num_attemps += 1
				death_screen(guessval, guessverdict) # func will show the death scene after loading
				pass # death
			guessing_scene.hide()
		"death":
			# if scene is death, go back to guesser
			# death is a text_scroll instance so it hides itself after emitting signal
			guessing_scene.show()
			pass
		"win":
			# back to main menu
			# win is a text_scroll instance so it hides itself after emitting signal
			main_menu.show()
			pass
		_:
			print("invalid scene passed: " + endscene)
			pass
	pass

func win_screen(guessval : int):
	var winevent = events_data.get_win_event(num_attemps, guessval)
	var tempscene = text_scroll_scene.instantiate()
	tempscene.end_scene.connect(handle_scene_end)
	# remove any other wins from group win
	if get_tree().has_group("win"):
		var old_winscene = get_tree().get_first_node_in_group("win")
		old_winscene.remove_from_group("win")
		old_winscene.queue_free()
	tempscene.add_to_group("win")
	self.add_child(tempscene)
	tempscene.load_first_line(winevent, "win")
	tempscene.show()
	pass

func death_screen(guessval: int, guessverdict: String):
	var deathdata = events_data.get_death_event(num_attemps, guessval, guessverdict)
	var deathevent = deathdata[0]
	var deathid = deathdata[1]
	var tempscene
	if get_tree().has_group(deathid):
		tempscene = get_tree().get_first_node_in_group(deathid)
	else:
		tempscene = text_scroll_scene.instantiate()
		tempscene.end_scene.connect(handle_scene_end)
		tempscene.add_to_group(deathid)
		self.add_child(tempscene)
	tempscene.load_first_line(deathevent, "death")
	tempscene.show()
	pass
