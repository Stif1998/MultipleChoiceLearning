extends Node

const FILE_PATH = "user://save.json"

var data = {}

func _ready():
	if !FileAccess.file_exists(FILE_PATH):
		createNewSaveFile()
	else:
		data = readSave()

func readSave():
	var file = FileAccess.open(FILE_PATH, FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content
	
func createNewSaveFile():
	var file = FileAccess.open("res://Assets/defaultSave.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	writeSave(content)
	
func writeSave(content):
	data = content
	
	var file = FileAccess.open(FILE_PATH, FileAccess.WRITE)
	file.store_string(JSON.stringify(content))
	file.close()
	file = null
	
func getLectures():
	return data["Lectures"]
	
func getChaptersByLectureIndex(lectureIndex: int):
	return data["Lectures"][lectureIndex]["Chapters"]
