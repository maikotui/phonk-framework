extends TileMap
class_name Level


# Called when the node enters the scene tree for the first time.
func _ready():
	Phonk.level_manager.set_level(self)


func register_entity(entity):
	add_to_group("entities")
	
	set_cellv(world_to_map(entity.position), 1)


func get_entity_at_position(pos: Vector2):
	for entity in get_tree().get_nodes_in_group("entity"):
		if world_to_map(entity.position) == pos:
			return entity
	return null
