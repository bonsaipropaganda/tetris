extends CharacterBody2D
class_name BasePiece

func _physics_process(delta):
	velocity = Vector2(0,100)
	move_and_slide()
