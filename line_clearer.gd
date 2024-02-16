extends Area2D
var amount_of_areas = 0

func _ready():
	Global.piece_landed.connect(_on_piece_landed)

func _on_area_entered(area):
	amount_of_areas += 1
	print(amount_of_areas)



func _on_area_exited(area):
	amount_of_areas -= 1

func _on_piece_landed():
	if amount_of_areas == 11:
		for body in get_overlapping_bodies():
			body.queue_free()
