class_name InputComponent extends Node

var move_dir := Vector2.ZERO
var sprint_pressed := false

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func tick():
	move_dir = Input.get_vector("move_left","move_right","move_forward","move_backward")
	sprint_pressed = Input.is_action_pressed("sprint")
