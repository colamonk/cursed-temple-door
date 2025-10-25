extends Node2D

# signals
signal end_scene(scene_name : String)

# nodes
@onready var num_label: Label = $NumLabel
@onready var result_label: Label = $ResultLabel

# variables
var currentPass : int
var tempGuess : String
var guessval : int
var guessverdict : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset_currentPass()
	num_label.add_theme_font_size_override("font_size", 32)
	result_label.add_theme_font_size_override("font_size", 32)
	num_label.text = "ready cheese"
	result_label.text = "ready cheese"
	tempGuess = ""
	print("hello guessingscene")
	pass # Replace with function body.

func reset_currentPass():
	currentPass = randi_range(1000, 9999)
	pass

#for testing, delete this later
func _on_keypad_container_keypress(value: String) -> void:
	result_label.text = ""
	match value:
		"DEL":
			tempGuess = tempGuess.erase(clampi(tempGuess.length()-1, 0, 6), 1)
		"OK":
			check_value(tempGuess)
		_:
			tempGuess += value
	num_label.text = tempGuess
	pass # Replace with function body.

func check_value(value: String):
	if not value.length() == 4:
		result_label.text = "value isnt 4 digit number"
		guessval = 0
		guessverdict = "was invalid"
	else:
		if value.to_int() > currentPass:
			result_label.text = "value is too high"
			guessverdict = "was too high"
		elif value.to_int() < currentPass:
			result_label.text = "value is too low"
			guessverdict = "was too low"
		elif value.to_int() == currentPass:
			result_label.text = "value is correct"
			guessverdict = "was correct"
		else:
			guessverdict = "no verdict"
			pass # idk
		guessval = value.to_int()
	print(tempGuess) # ?
	print(num_label.text) # ?
	end_scene.emit("guess")
	tempGuess = ""
	pass
