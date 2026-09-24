class_name LocationManager
extends Node

var _current_location: Node3D

func load_location(location: Node3D, location_container: Node3D) -> void:
	if is_instance_valid(_current_location):
		_current_location.get_parent().remove_child(_current_location)
		_current_location.queue_free()

	_current_location = location
	location_container.add_child(_current_location)
