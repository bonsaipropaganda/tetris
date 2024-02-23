extends Area2D
var amount_of_areas = 0:
	set(value):
		amount_of_areas = value
		if value == 11:
			for block in get_overlapping_areas():
				block.get_parent().queue_free()
			amount_of_areas = get_overlapping_areas().size()
			Global.line_cleared.emit()

func _ready():
	Global.piece_landed.connect(_on_piece_landed)

func _on_area_entered(area):
	amount_of_areas = get_overlapping_areas().size()


func _on_area_exited(area):
	amount_of_areas = get_overlapping_areas().size()
		
func _on_piece_landed():
	pass
	#await get_tree().create_timer(.2).timeout
	#for body in get_overlapping_bodies():
		##print(body.name)
	#if amount_of_areas == 11:
		#for body in get_overlapping_bodies():
			#body.queue_free()


func _on_body_entered(body):
	#print(body.name)
	pass


func _on_body_exited(body):
	pass # Replace with function body.
