extends Node

var score = 0
var level = 1
signal levelchanged
signal scorechanged
var scores = {
	0:0,
	1:0,
	2:0,
	3:10,
	4:20,
	5:50,
	6:100,
	7:200,
	8:300,
	9:1000
}

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()

func change_score(s):
	score += s
	emit_signal("scorechanged")

func change_level():
	if Global.score >= 100:
		Global.level += 1
		$Level1.hide()
		$Level2.show()
		emit_signal("levelchanged")
