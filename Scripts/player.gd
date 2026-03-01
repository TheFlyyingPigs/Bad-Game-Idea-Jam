extends CharacterBody3D

@onready var input_component = %InputComponent
@onready var movement_component = %Movement_Component

func _physics_process(delta: float) -> void:
	# UPDATE INPUTS
	input_component.tick()
	
	# UPDATE MOVEMENT DIRECTION
	movement_component.direction = input_component.move_dir
	movement_component.sprinting = input_component.sprint_pressed
	# MOVE
	movement_component.tick(delta)
 
