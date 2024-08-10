extends Node

const NO_SELECTED_LECTURE_CODE: int = -1
const NO_SELECTED_CHAPTER_CODE: int = -1

var isEditMode: bool
var selectedLectureIndex: int = NO_SELECTED_LECTURE_CODE
var selectedQuizData = {}

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
