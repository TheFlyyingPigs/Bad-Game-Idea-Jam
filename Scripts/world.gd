extends Node3D


func _ready() -> void:
	var outside = load("res://Scenes/outside_world.tscn")
	Gui.show_screen(Gui.ScreenType.MAIN_MENU)
	get_tree().current_scene = outside.instantiate()
