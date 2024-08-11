extends Node

const NO_SELECTED_LECTURE_CODE: int = -1
const NO_SELECTED_CHAPTER_CODE: int = -1

var isEditMode: bool
var selectedLectureIndex: int = NO_SELECTED_LECTURE_CODE
var selectedQuizData = {}

var remainingQuizzes = []
var currentQuiz = {}

func setEditState(isEditModeParam: bool) -> void:
	isEditMode = isEditModeParam

func setSelectedLectureIndex(selectedLectureIndexParam: int) -> void:
	selectedLectureIndex = selectedLectureIndexParam

func setQuizState(
	allChaptersSelectedParam: bool,
	selectedLectureIndexParam: int,
	selectedChapterIndexParam: int
) -> void:
	selectedQuizData = {
		"allChaptersSelected": allChaptersSelectedParam,
		"selectedLectureIndex": selectedLectureIndexParam,
		"selectedChapterIndex": selectedChapterIndexParam
	}

func setRemainingQuizzes(quizzes) -> void:
	remainingQuizzes = quizzes

func setCurrentQuizByIndex(quizIndex: int) -> void:
	currentQuiz = remainingQuizzes[quizIndex]

func removeRemainingQuizByIndex(quizIndex: int) -> void:
	remainingQuizzes.remove_at(quizIndex)
