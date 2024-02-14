extends Area2D

var body_count = 0

func _on_body_entered(body):
	body_count = 0
	for count in get_overlapping_bodies():
		body_count += 1
	if body_count == 10:
		for count in get_overlapping_bodies():
			count.queue_free()
