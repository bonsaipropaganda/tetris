extends CharacterBody2D
class_name BasePiece

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity * delta
