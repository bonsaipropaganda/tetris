extends Node2D

var speed = 200
var dir



func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		dir = 1
	elif Input.is_action_pressed("ui_left"):
		dir = -1
	else:
		dir = 0
	if Global.current_piece:
		Global.current_piece.global_position.x += dir * speed * delta

	#if Input.is_action_just_pressed("rotate"):
		#rotate_piece()

func rotate_piece():
	Global.current_piece.rotate(deg_to_rad(90))
