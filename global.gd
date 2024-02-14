extends Node


var pieces = []
var current_piece

func _ready():
	add_pieces_to_array()

func add_pieces_to_array():
	for scene in ["res://scenes/pieces/individual_pieces/t_piece.tscn"]:
		var s = load(scene)
		pieces.append(s)
