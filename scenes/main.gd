extends Node2D

var speed = 200
var dir

func _ready():
	Global.make_static.connect(_add_static_piece)

func _physics_process(delta):
	pass



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
	
	elif piece_type == Global.piece_types.single_block:
		var p = Global.single_block.instantiate()
		p.rotation = rotation
		add_child(p)
		p.global_position = piece_pos


func _on_line_clearer_area_entered(area):
	pass # Replace with function body.


func _on_line_clearer_area_exited(area):
	pass # Replace with function body.
