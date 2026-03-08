class_name DeathComponent extends Node
'
handles player death
'

func die():
	'
	switches levels when died
	'
	Globals.switch_level(Globals.LevelID.INSIDE)
	Gui.fade_in()
