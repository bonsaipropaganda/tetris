extends CharacterBody2D
class_name BasePiece
var hit_ground = false
@export var piece_type: Global.piece_types

func _physics_process(delta):
	velocity = Vector2(0,100)
	
	if is_on_floor():
		if hit_ground == false:
			Global.spawn_piece.emit()
			hit_ground = true
			#make_static()
	else:
		move_and_slide()

#func make_static():
	#Global.make_static.emit(piece_type,rotation,global_position)
	#queue_free()
