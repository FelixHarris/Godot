extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO











func _ready():
	center = get_viewport_rect().size/2

func _process(delta):
	if Input.is_action_just_pressed("zoom"):
		pass
