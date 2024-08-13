extends Control


func onRedoButtonPressed() -> void:
	get_tree().change_scene_to_file("res://PlayQuiz/QuizScreen.tscn")
	
func onMenuButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")

