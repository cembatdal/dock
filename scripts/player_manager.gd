extends Node

func place_player(inspector: Node3D, location: Node3D, target: Vector3) -> void:
	location.add_child(inspector)
	inspector.global_position = target
