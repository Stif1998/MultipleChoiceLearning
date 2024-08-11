class_name AnswerContainer
extends HBoxContainer

@export var answerIndex: int

@onready var answerButton: CheckButton = $AnswerButton
@onready var checkBox: CheckBox = $CheckBox
@onready var answerLabel: Label = $AnswerLabel

func displayNewAnswer() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var currentQuiz = appStateDataHandler.currentQuiz
	
	var answer = currentQuiz["Answers"][answerIndex]
	
	answerButton.set_pressed_no_signal(false)
	answerButton.disabled = false
	
	checkBox.visible = false
	
	answerLabel.text = answer["Text"]
	answerLabel.label_settings = load("res://Fonts/normal_text.tres")

func checkAnswer() -> void:
	var appStateDataHandler = get_node("/root/AppStateDataHandler")
	var currentQuiz = appStateDataHandler.currentQuiz
	var answer = currentQuiz["Answers"][answerIndex]
	
	answerButton.disabled = true
	
	checkBox.set_pressed_no_signal(answer["Correct"])
	checkBox.visible = true
	
	if answerButton.button_pressed == checkBox.button_pressed:
		answerLabel.label_settings = load("res://Fonts/correct_answer_text.tres")
	else:
		answerLabel.label_settings = load("res://Fonts/wrong_answer_text.tres")
