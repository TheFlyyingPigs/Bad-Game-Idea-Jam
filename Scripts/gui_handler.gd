extends Node

@onready var gui := get_node("/root/world/Gui")
@onready var camera := get_node("/root/world/Player/CameraComponent")


enum ScreenType{
	PAUSE,
	MAIN_MENU,
	UPGRADE
}

func alert(type):
	gui.alert(type)

func show_screen(type):
	gui.show_screen(type)

func screen_shake(intensity, time):
	camera.screen_shake(intensity,time)
