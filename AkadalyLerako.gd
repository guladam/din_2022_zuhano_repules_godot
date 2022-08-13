extends Node2D

var akadaly = preload("res://Akadaly.tscn")

var elso = Vector2(300, 0)
var masodik = Vector2(500, 0)
var harmadik = Vector2(700, 0)
var negyedik = Vector2(900, 0)


func _ready():
	var elso_akadaly = akadaly.instance()
	elso_akadaly.position = elso
	add_child(elso_akadaly)
	
	var masodik_akadaly = akadaly.instance()
	masodik_akadaly.position = masodik
	add_child(masodik_akadaly)
	
	var harmadik_akadaly = akadaly.instance()
	harmadik_akadaly.position = harmadik
	add_child(harmadik_akadaly)
	
	var negyedik_akadaly = akadaly.instance()
	negyedik_akadaly.position = negyedik
	add_child(negyedik_akadaly)


func _on_UjAkadaly_area_entered(_area):
	var uj_akadaly = akadaly.instance()
	uj_akadaly.position = negyedik
	call_deferred("add_child", uj_akadaly)


func _on_AkadalyTorlo_area_entered(area):
	area.queue_free()
