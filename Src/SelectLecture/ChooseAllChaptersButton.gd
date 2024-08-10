extends Button

func onChooseAllChaptersButtonPressed() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var lectureIndex = appStateDataHandler.selectedLectureIndex
	
	if lectureIndex == AppStateDataHandler.NO_SELECTED_LECTURE_CODE:
		return
	
	appStateDataHandler.setQuizState(
		true,
		lectureIndex,
		AppStateDataHandler.NO_SELECTED_CHAPTER_CODE
	)
	
	get_tree().change_scene_to_file("res://PlayQuiz/QuizScreen.tscn")
