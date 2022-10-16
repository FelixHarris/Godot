extends Node2D
onready var arrow =$Arrow
var arrow_speed = 200





func _ready():
	pass 

func _process(delta):
	arrow.translate(Vector2.LEFT *arrow_speed * delta)





func _on_ArrowEnd_area_entered(area):
	if area == arrow:
		arrow.global_position = $ArrowTrapSprite/Position2D.global_position
