extends Control

func _ready() -> void:
	# TODO load data from file
	pass


func OnQuitButtonPressed() -> void:
	get_tree().quit()


func StartMultipleChoice() -> void:
	# TODO set isEdit in autoload to false
	get_tree().change_scene_to_file("res://SelectLecture/SelectLecture.tscn")


func EditMultipleChoiceQuestions() -> void:
	# TODO set isEdit in autoload to true
	get_tree().change_scene_to_file("res://SelectLecture/SelectLecture.tscn")
