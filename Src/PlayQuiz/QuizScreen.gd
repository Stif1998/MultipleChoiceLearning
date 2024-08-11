extends Control

@onready var quizContainer: VBoxContainer = %QuizContainer

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	setupChosenQuizzes()	
	startNextQuiz()

func OnMenuButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")

func setupChosenQuizzes() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var saveFileDataHandler = get_node("/root/SaveFileDataHandler")
	
	var selectedQuizData = appStateDataHandler.selectedQuizData
	var selectedLectureChapters = saveFileDataHandler.getChaptersByLectureIndex(
		selectedQuizData["selectedLectureIndex"]
	)
	
	var quizzes = []
	if selectedQuizData["allChaptersSelected"]:
		for chapter in selectedLectureChapters:
			quizzes.append_array(chapter["MCQuestions"])
	else:
		var selectedChapter = selectedLectureChapters[selectedQuizData["selectedChapterIndex"]]
		quizzes.append_array(selectedChapter["MCQuestions"])
	
	appStateDataHandler.setRemainingQuizzes(quizzes)

func startNextQuiz() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var remainingQuizzes = appStateDataHandler.remainingQuizzes
	
	var nextQuizIndex = rng.randi_range(0, remainingQuizzes.size() - 1)
	
	appStateDataHandler.setCurrentQuizByIndex(nextQuizIndex)
	appStateDataHandler.removeRemainingQuizByIndex(nextQuizIndex)
	
	quizContainer.displayNextQuiz()
