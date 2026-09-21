extends Node

var current_location: Node3D

func load_location(scene: PackedScene, location_container: Node3D) -> Node3D:
	if is_instance_valid(current_location):
		current_location.get_parent().remove_child(current_location)
		current_location.queue_free()

	current_location = scene.instantiate() as Node3D
	location_container.add_child(current_location)
	return current_location
