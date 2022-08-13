extends Node2D

export var sebesseg = Vector2(-80, 0)
export var max_fuggoleges_elteres = 60

func _ready():
	randomize()
	var elteres = randi() % max_fuggoleges_elteres
	var erme = randi() % 2
	var elmozdulas = Vector2(0, elteres)
	
	if erme == 1:
		elmozdulas.y = elmozdulas.y * -1
		
	$Felso.position = $Felso.position + elmozdulas
	$FelsoUtkozo.position = $FelsoUtkozo.position + elmozdulas
	$Also.position = $Also.position + elmozdulas
	$AlsoUtkozo.position = $AlsoUtkozo.position + elmozdulas
	$PontNovelo.position = $PontNovelo.position + elmozdulas


func _physics_process(delta):
	position = position + sebesseg * delta
