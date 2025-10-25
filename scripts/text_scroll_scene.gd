extends Node2D

signal end_scene(scene_name : String)

# nodes
@onready var text_box_container: VBoxContainer = $TextBoxContainer
@onready var current_text_line: Label = $TextBoxContainer/CurrentTextLine

# variables
@export var data : Array
var current_text_index : int
var current_scene_name : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_text_line.add_theme_font_size_override("font_size", 32)
	current_text_line.text = "ready"
	print("hello textscrollscene")
	pass # Replace with function body.

func load_first_line(eventsarray : Array, scenename : String):
	data = eventsarray
	current_text_index = 0
	current_text_line.text = data[0]
	current_scene_name = scenename
	pass

func _on_control_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			current_text_index += 1
			if current_text_index == data.size():
				print("end of text line, move to next scene")
				end_scene.emit(current_scene_name)
				self.hide()
			else:
				current_text_line.text = data[current_text_index]
	pass # Replace with function body.
