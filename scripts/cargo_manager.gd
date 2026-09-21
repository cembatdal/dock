extends Node

func place_cargo_box(cargo_box: Node3D, location: Node3D, target: Vector3) -> void:
	location.add_child(cargo_box)
	cargo_box.global_position = target
