class_name SelectLecture
extends Control

@onready var titleLabel: Label = $TitleLabel
@onready var chooseAllChaptersButton: Button = $HBoxContainer/ChooseAllChaptersButton
@onready var addLectureButton: Button = $HBoxContainer/AddLectureButton
@onready var deleteLectureButton: Button = $HBoxContainer/DeleteLectureButton
@onready var addChapterButton: Button = $HBoxContainer/AddChapterButton

var isEdit: bool

func _ready() -> void:
	# TODO get isEdit from state/autoload
	var isEdit = false
	
	if isEdit:
		titleLabel.text = "Choose lecture and chapter to edit"
		chooseAllChaptersButton.visible = false
		addLectureButton.visible = true
		deleteLectureButton.visible = true
		addChapterButton.visible = true
	else:
		titleLabel.text = "Choose lecture and chapter for quiz"
		chooseAllChaptersButton.visible = true
		addLectureButton.visible = false
		deleteLectureButton.visible = false
		addChapterButton.visible = false
