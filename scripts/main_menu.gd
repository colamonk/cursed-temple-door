extends Node2D

signal start_new_game
signal continue_game

@onready var new_game_button: Button = $VBoxContainer/NewGameButton
@onready var continue_button: Button = $VBoxContainer/ContinueButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game_button.add_theme_font_size_override("font_size", 32)
	continue_button.add_theme_font_size_override("font_size", 32)
	new_game_button.text = "New Game"
	continue_button.text = "Continue"
	print("hello mainmenu")
	pass # Replace with function body.


func _on_new_game_button_pressed() -> void:
	start_new_game.emit()
	pass # Replace with function body.


func _on_continue_button_pressed() -> void:
	continue_game.emit()
	pass # Replace with function body.
