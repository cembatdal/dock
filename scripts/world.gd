extends Node3D

const INSPECTOR_SCENE = preload("res://scenes/inspector.tscn")
const CARGO_BOX_SCENE = preload("res://scenes/cargo_box.tscn")

func _ready() -> void:
	place_player()
	place_cargo_box()

func place_player():
	var inspector = INSPECTOR_SCENE.instantiate()
	add_child(inspector)
	inspector.global_position = Vector3(0, 1, 0)
	
func place_cargo_box():
	var cargo_box = CARGO_BOX_SCENE.instantiate()
	add_child(cargo_box)
	cargo_box.global_position = Vector3(-2, 2, -2)
