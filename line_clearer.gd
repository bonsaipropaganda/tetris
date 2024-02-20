extends Area2D
var amount_of_areas = 0

func _ready():
	Global.piece_landed.connect(_on_piece_landed)

func _on_area_entered(area):
	amount_of_areas += 1




func _on_area_exited(area):
	amount_of_areas -= 1

func _on_piece_landed():
	for body in get_overlapping_bodies():
		print(body.name)
	if amount_of_areas == 11:
		for body in get_overlapping_bodies():
			body.queue_free()


func _on_body_entered(body):
	if body.is_in_group("single_block"):
		print("single_block")


func _on_body_exited(body):
	pass # Replace with function body.
