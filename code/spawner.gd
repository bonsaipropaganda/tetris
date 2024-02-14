extends Node2D

func spawn_piece():
	var p = Global.pieces.pick_random().instantiate()
	owner.add_child(p)
