class_name InteractComponent extends Node

@export var raycast : RayCast3D

var body : StaticBody3D

func try_interact():
	if raycast.is_colliding():
		body = raycast.get_collider()
		if body.interactable_component != null:
			body.interactable_component.interact()
