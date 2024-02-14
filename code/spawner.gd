extends Node2D

# this is just to test the spawning
func _input(event):
	if event.is_action_pressed("ui_accept"):
		spawn_piece()

func spawn_piece():
	var p = Global.pieces.pick_random().instantiate()
	$SpawnPath/SpawnLocation.progress_ratio = randf()
	while int($SpawnPath/SpawnLocation.progress) % 32 != 0.0:
		$SpawnPath/SpawnLocation.progress_ratio = randf()
	p.global_position = $SpawnPath/SpawnLocation.global_position
	owner.add_child(p)
	Global.current_piece = p
