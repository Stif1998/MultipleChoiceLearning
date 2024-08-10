extends OptionButton

@onready var lectureOptionButton: OptionButton = %LectureOptionButton
@onready var chapterContainer: VBoxContainer = %ChapterContainer

func _ready() -> void:
	addLectureOptions()

func addLectureOptions() -> void:
	var saveFileDataHandler = get_node("/root/SaveFileDataHandler")
	var lectures = saveFileDataHandler.getLectures()
	for lecture in lectures:
		lectureOptionButton.add_item(lecture.Name)
	
	lectureOptionButton.connect("item_selected", onLectureSelection)
	
	if lectures.size() != 0:
		onLectureSelection(0)

func onLectureSelection(lectureIndex: int) -> void:	
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	appStateDataHandler.setSelectedLectureIndex(lectureIndex)
	
	chapterContainer.loadChapters(lectureIndex)

