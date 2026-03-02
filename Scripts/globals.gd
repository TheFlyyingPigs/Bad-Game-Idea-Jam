extends Node

# ADD ACTUAL RESOURCE TYPES!
enum ItemType {
	WATER,
	LIGHT,
	SCRAP_METAL
}

var item_count := []

func add_item(type : ItemType):
	item_count.append(type)
	print("Picked up s%" %type)
	# ADD GUI INDICATION THAT THIS HAPPENED
