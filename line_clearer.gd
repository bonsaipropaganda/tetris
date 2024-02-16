extends Area2D
var amount_of_areas = 0

func _on_area_entered(area):
	amount_of_areas += 1
	if amount_of_areas == 10:
		for body in get_overlapping_bodies():
			body.queue_free()



func _on_area_exited(area):
	amount_of_areas -= 1

