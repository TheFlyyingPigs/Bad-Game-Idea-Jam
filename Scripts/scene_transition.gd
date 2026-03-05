class_name SceneTransitioner extends Area3D

@export var connected_scene : PackedScene


func _on_body_entered(body: Node3D) -> void:
	
	if not body.input_component == null:
		get_tree().unload_current_scene()
		get_tree().current_scene = connected_scene.instantiate()

func _process(delta: float) -> void:
	print(connected_scene)
