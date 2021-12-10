extends TileMap
class_name WorldGrid


func _ready():
	GameManager.world = self


func register_entity(entity):
	add_to_group("entities")
	
	set_cellv(world_to_map(entity.position), entity.type)
	
	if entity.snap_to_grid:
		pass


func get_entity_at_position(pos: Vector2) -> Entity:
	for entity in get_tree().get_nodes_in_group("entities"):
		if world_to_map(entity.position) == pos:
			return entity
	return null


func get_actor_at_position(pos: Vector2) -> Entity:
	for entity in get_tree().get_nodes_in_group("entities"):
		if entity.type != Entity.EntityType.ACTOR:
			continue
		if world_to_map(entity.position) == pos:
			return entity
	return null


func start_world_update():
	for entity in get_tree().get_nodes_in_group("entities"):
		entity.world_update(self)
