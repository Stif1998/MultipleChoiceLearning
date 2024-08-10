extends Control

func _ready() -> void:
	pass # Replace with function body.



func OnMenuButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
