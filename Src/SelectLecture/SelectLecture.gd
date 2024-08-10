class_name SelectLecture
extends Control

@onready var titleLabel: Label = $TitleLabel
@onready var selectHBoxContainer: HBoxContainer = $SelectHBoxContainer
@onready var editHBoxContainer: HBoxContainer = $EditHBoxContainer

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
		titleLabel.text = "Choose quiz"
		selectHBoxContainer.visible = true
		editHBoxContainer.visible = false

func onMenuButtonPressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
