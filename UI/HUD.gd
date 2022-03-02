extends Control

func _ready():
	var _changed = Global.connect("scorechanged",self,"_on_score_changed")
	_on_score_changed()
	var lvlchanged = Global.connect("levelchanged",self,"_on_level_changed")
	_on_level_changed()

func _on_score_changed():
	$Score.text = "Score: " + str(Global.score)

func _on_level_changed():
	$Level.text = "Level: " + str(Global.level)
	
