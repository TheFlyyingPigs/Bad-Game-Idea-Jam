class_name ResourceDeposit
extends StaticBody3D

@export var deposit_type : DepositType
@onready var interactable_component := %InteractableComponent

func _ready() -> void:
	var material = StandardMaterial3D.new()
	material.albedo_color = deposit_type.particle_color
	$GPUParticles3D.draw_pass_1.surface_set_material(0, material)
	interactable_component.item_drop = deposit_type.resource_type
	$MeshInstance3D.mesh = deposit_type.mesh

func interact():
	interactable_component.interact()
	$AnimationPlayer.play("break")
	
