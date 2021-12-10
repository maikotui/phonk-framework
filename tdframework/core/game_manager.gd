extends Node2D


var world setget _set_world, _get_world

signal current_world_changed(world)

func _set_world(new_world):
	world = new_world
	emit_signal("current_world_changed", world)


func _get_world():
	return world

func trigger_world_update():
	world.start_world_update()
