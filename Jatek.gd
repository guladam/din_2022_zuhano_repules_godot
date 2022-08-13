extends Node2D

var pontszam = 0

func _ready():
	get_tree().paused = true


func _on_Repulo_area_entered(area):
	if area.get_collision_layer() == 2:
		$Repulo.set_process(false)
		$Repulo.visible = false
		$HalalHang.play()
	else:
		pontszam = pontszam + 1
		$UI/Pontszam.text = str(pontszam)
		$PontszamHang.play()
		$PontszamHang.pitch_scale = $PontszamHang.pitch_scale + 0.01


func _on_HalalHang_finished() -> void:
	get_tree().reload_current_scene()
