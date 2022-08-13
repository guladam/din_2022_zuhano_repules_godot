extends Node2D


func _input(_event):
	if get_tree().paused == true and Input.is_action_pressed("ugras"):
		get_tree().paused = false
