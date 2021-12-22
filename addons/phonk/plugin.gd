tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("Phonk", "res://addons/phonk/core/phonk.gd")


func _exit_tree():
	remove_autoload_singleton("Phonk")
