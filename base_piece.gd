extends CharacterBody2D
class_name BasePiece
var hit_ground = false
@export var piece_type: Global.piece_types
var selected = false
func _ready():
	Global.spawn_piece.connect(_on_spawn_piece)

func _physics_process(delta):
	velocity = Vector2(0,100)
	if selected:
		if Input.is_action_just_pressed("ui_right"):
			move_piece(1)
		elif Input.is_action_just_pressed("ui_left"):
			move_piece(-1)
		if Input.is_action_just_pressed("rotate"):
			rotate_piece()
	
	if is_on_floor():
		if hit_ground == false:
			Global.piece_landed.emit()
			Global.spawn_piece.emit()
			hit_ground = true
			#make_static()
	#else:
	move_and_slide()

#func make_static():
	#Global.make_static.emit(piece_type,rotation,global_position)
	#queue_free()
func rotate_piece():
	Global.current_piece.rotate(deg_to_rad(90))

func _on_spawn_piece():
	selected = false

func move_piece(dir):
	# first check for a collision in the dir
	# if no collision then move
	Global.current_piece.global_position.x += 32 * dir
