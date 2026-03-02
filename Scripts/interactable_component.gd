class_name InteractableComponent extends Node

@export var item_drop : Globals.ItemType

func interact():
	Globals.add_item(item_drop)
	
