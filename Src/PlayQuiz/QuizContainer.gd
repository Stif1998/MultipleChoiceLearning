extends VBoxContainer

func displayNextQuiz() -> void:
	for child in get_children():
		if child.is_in_group("AnswerContainer"):
			child.displayNewAnswer()


func onCheckButtonPressed() -> void:
	for child in get_children():
		if child.is_in_group("AnswerContainer"):
			child.checkAnswer()
