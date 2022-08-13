extends Area2D

export var gravitacio = Vector2(0, 250)
export var ugras = Vector2(0, -150)
export var forgas = 80
export var le_meddig = 30
export var fel_meddig = -10

var sebesseg = Vector2.ZERO

func _physics_process(delta):
	sebesseg = sebesseg + gravitacio * delta

	if Input.is_action_just_pressed("ugras"):
		sebesseg = ugras
		$UgrasHang.play()

	position = position + sebesseg * delta
	
	if sebesseg.y >= 0:
		rotation_degrees = min(rotation_degrees + forgas * delta, le_meddig)
	else:
		rotation_degrees = max(rotation_degrees - forgas * delta, fel_meddig)
