extends Node2D

var speed = 200
var dir



func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right"):
		Global.current_piece.global_position.x += 32
	elif Input.is_action_just_pressed("ui_left"):
		Global.current_piece.global_position.x -= 32
	if Input.is_action_just_pressed("rotate"):
		rotate_piece()

func rotate_piece():
	Global.current_piece.rotate(deg_to_rad(90))
