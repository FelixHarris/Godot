extends Control


func _ready():
	pass


func _on_Options_pressed():
	$AnimationPlayer.play("MoveToOptions")




func _on_Back_pressed():
	$AnimationPlayer.play("MoveToMain")


func _on_Soundslider_value_changed(value):
	Sound.change_sound_volume(value)


func _on_HSlider_value_changed(value):
	Sound.change_music_volume(value)




func _on_CheckBox_toggled(button_pressed):
	if button_pressed: 
		OS.window_fullscreen = true
	else:
		OS.window_fullscreen = false


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")


func _on_Quit_pressed():
	get_tree().quit()
