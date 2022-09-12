extends Area2D


func _ready():
	$AnimationPlayer.play("Idle")



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		RigidBody2D
