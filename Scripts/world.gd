extends Node3D

@onready var outside = load("res://Scenes/outside_world.tscn")

func _ready() -> void:
	Gui.show_screen(Gui.ScreenType.MAIN_MENU)
	Globals.load_scene(outside)
