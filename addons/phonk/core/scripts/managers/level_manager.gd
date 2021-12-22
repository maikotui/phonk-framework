extends Object
class_name LevelManager


var activeLevel: Level
var previousLevel: Level

signal levelChanged(level)


func set_level(level: Level):
	previousLevel = activeLevel
	activeLevel = level
