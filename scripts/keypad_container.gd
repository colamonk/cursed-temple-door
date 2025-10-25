extends GridContainer

signal keypress(value: String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_buttons()
	print("hello keypadcontainer")

func create_buttons():
	for i in range(12):
		var button = Button.new()
		match i:
			9:
				button.text = "DEL"
				button.pressed.connect(button_pressed.bind("DEL"))
			10:
				button.text = "0"
				button.pressed.connect(button_pressed.bind("0"))
			11:
				button.text = "OK"
				button.pressed.connect(button_pressed.bind("OK"))
			_:
				button.text = str(i+1)
				button.pressed.connect(button_pressed.bind(str(i+1)))
		button.add_theme_font_size_override("font_size", 32)
		add_child(button)
	print("created keypad buttons")

func button_pressed(button_id: String):
	#print(button_id)
	keypress.emit(button_id)
	pass
