extends Node2D

var speed = 200
var dir

func _ready():
	Global.make_static.connect(_add_static_piece)

func _physics_process(delta):
	pass
	#if Global.current_piece:
		#if Input.is_action_just_pressed("ui_right"):
			#Global.current_piece.global_position.x += 32
		#elif Input.is_action_just_pressed("ui_left"):
			#Global.current_piece.global_position.x -= 32
		#if Input.is_action_just_pressed("rotate"):
			#rotate_piece()
#
#func rotate_piece():
	#Global.current_piece.rotate(deg_to_rad(90))


func _on_start_timer_timeout():
	Global.start_game.emit()


func _on_end_area_body_entered(body):
	Global.game_over.emit()

func _add_static_piece(piece_type, rotation, piece_pos):
	if piece_type == Global.piece_types.t_piece:
		var p = Global.t_piece_static.instantiate()
		p.rotation = rotation
		p.global_position = piece_pos
		add_child(p)

#func move_piece(dir, original_pos):
	#if Global.current_piece
	#Global.current_piece.global_position.x += 32 * dir
	#if Global.current_piece.is_on_wall():
		#Global.current_piece.global_position.x = original_pos.x
