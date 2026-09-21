extends Node

func create(scene: PackedScene) -> Node3D:
	return scene.instantiate() as Node3D
