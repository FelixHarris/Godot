extends Control


var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	
