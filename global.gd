extends Node

signal spawn_piece
signal start_game
signal game_over
signal make_static(piece_type: piece_types,rotation: int,global_position: Vector2)
signal piece_landed

var current_piece
enum piece_types {single_block,t_piece,line_piece,l_piece,j_piece,square_piece,s_piece,z_piece}

var t_piece = preload("res://scenes/pieces/individual_pieces/t_piece.tscn")
var single_block = preload("res://scenes/pieces/individual_pieces/static_body_ver/single_block.tscn")

var t_piece_static = preload("res://scenes/pieces/individual_pieces/static_body_ver/t_piece_static.tscn")

var pieces = [t_piece]
