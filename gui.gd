extends Control

@onready var anim := $AnimationPlayer

@onready var alert_label := $AlertPivot/AlertLabel
func alert(type : Globals.ItemType):
	match type:
		Globals.ItemType.WATER: alert_label.text = "Found  Water" # CHANGE PICTURE / DISPLAY
		# ADD THE REST OF THE RESOURCES
	
	anim.play("alert")

func show_screen(type : Gui.ScreenType):
	match type:
		Gui.ScreenType.PAUSE: pass # DISPLAY PAUSE SCREEN
		Gui.ScreenType.MAIN_MENU: pass # DISPLAY MAIN MENU
		Gui.ScreenType.UPGRADE: pass # DISPLAY UPGRADE SCREEN
