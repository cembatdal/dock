class_name PlayerManager
extends Node

func place_player(inspector: Node3D, location: Node3D, local_target: Vector3) -> void:
	inspector.position = local_target
	location.add_child(inspector)
