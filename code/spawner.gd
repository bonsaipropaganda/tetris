extends Node2D

func _ready():
	Global.spawn_piece.connect(spawn_piece)
	Global.start_game.connect(spawn_piece)

func spawn_piece():
	var p = Global.pieces.pick_random().instantiate()
	p.global_position = self.global_position
	owner.add_child(p)
	Global.current_piece = p
