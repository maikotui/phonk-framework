extends Node2D
class_name Entity


enum EntityType {
	ACTOR, OBJECT, ENVIRONMENT
}


export(EntityType) var type
export(bool) var snap_to_grid


func _ready():
	GameManager.connect("current_world_changed", self, "_handle_world_changed")


func world_update(world):
	pass


func _handle_world_changed(world):
	world.register_entity(self)
