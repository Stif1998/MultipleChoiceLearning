extends Control

func OnQuitButtonPressed() -> void:
	get_tree().quit()


func StartMultipleChoice() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	appStateDataHandler.setEditState(false)
	
	get_tree().change_scene_to_file("res://SelectLecture/SelectLecture.tscn")


func EditMultipleChoiceQuestions() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	appStateDataHandler.setEditState(true)
	
	get_tree().change_scene_to_file("res://SelectLecture/SelectLecture.tscn")
