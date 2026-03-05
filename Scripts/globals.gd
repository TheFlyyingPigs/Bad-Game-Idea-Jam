extends Node

@onready var world := get_node("/root/world/")

var loaded_scene : PackedScene

# ADD ACTUAL RESOURCE TYPES!
enum ItemType {
	WATER,
	LIGHT,
	SCRAP_METAL
}

var inventory := []

func add_item(type : ItemType):
	inventory.append(type)
	

func _ready() -> void:
	randomize()
	

func load_scene(scene):
	loaded_scene = scene
	world.add_child(loaded_scene.instantiate())
	
