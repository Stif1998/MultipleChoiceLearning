class_name ChapterButton
extends Button

var lectureIndex: int
var chapterIndex: int
var chapterName: String

func _ready() -> void:
	text = chapterName

static func instantiatedChapterButton(
	lectureIndexParam: int,
	chapterIndexParam: int,
	chapterNameParam: String
) -> ChapterButton:
	var chapterButton: PackedScene = load("res://SelectLecture/ChapterButton.tscn")
	
	var newChapterButton: ChapterButton = chapterButton.instantiate()
	newChapterButton.lectureIndex = lectureIndexParam
	newChapterButton.chapterIndex = chapterIndexParam
	newChapterButton.chapterName = chapterNameParam
	
	return newChapterButton


func onPressed() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	appStateDataHandler.setQuizState(
		false,
		lectureIndex,
		chapterIndex
	)
	
	get_tree().change_scene_to_file("res://PlayQuiz/QuizScreen.tscn")
