extends Control

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func play():
	Globals.switch_level(Globals.LevelID.INSIDE)
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func quit():
	get_tree().quit()
