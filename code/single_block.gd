extends CharacterBody2D
var falling = false

func _ready():
	Global.line_cleared.connect(_on_line_cleared)

func _physics_process(delta):
	if falling:
		velocity = Vector2(0,100)
		move_and_slide()
	else:
		pass

func _on_line_cleared():
	falling = true
	await get_tree().create_timer(1).timeout
	falling = false
