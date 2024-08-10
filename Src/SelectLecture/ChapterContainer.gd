extends VBoxContainer


func loadChapters(lectureIndex: int) -> void:	
	# first remove currently shown chapters
	var children = get_children()
	for child in children:
		child.queue_free()
	
	# load new chapters
	var saveFileDataHandler = get_node("/root/SaveFileDataHandler")
	var chapters = saveFileDataHandler.getChaptersByLectureIndex(lectureIndex)
	for index in chapters.size():
		var chapterButton := ChapterButton.instantiatedChapterButton(
			lectureIndex,
			index,
			chapters[index]["Name"]
		)
		add_child(chapterButton)
