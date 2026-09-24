class_name CargoManager
extends Node

func place_cargo_box(cargo_box: Node3D, location: Node3D, local_target: Vector3) -> void:
	cargo_box.position = local_target
	location.add_child(cargo_box)
