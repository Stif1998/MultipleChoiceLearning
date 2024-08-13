class_name SelectLecture
extends Control

@onready var titleLabel: Label = $TitleLabel
@onready var selectHBoxContainer: HBoxContainer = $SelectHBoxContainer
@onready var editHBoxContainer: HBoxContainer = $EditHBoxContainer
@onready var chooseAllChaptersButton: Button = %ChooseAllChaptersButton

func _ready() -> void:
	handleSelectAndEditButtons()

func handleSelectAndEditButtons() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var isEdit = appStateDataHandler.isEditMode
	
	if isEdit:
		titleLabel.text = "Choose quiz to edit"
		selectHBoxContainer.visible = false
		editHBoxContainer.visible = true
	else:
		var saveFileDataHandler = get_node("/root/SaveFileDataHandler")
		var lectureAmount = saveFileDataHandler.getLectures()
		if lectureAmount.size() == 0:
			chooseAllChaptersButton.disabled = true
			
		titleLabel.text = "Choose quiz"
		selectHBoxContainer.visible = true
		editHBoxContainer.visible = false

func onMenuButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
