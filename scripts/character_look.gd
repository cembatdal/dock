extends Node

func apply_look(
	character: Node3D, camera: Camera3D, mouse_delta: Vector2, sensitivity: float
) -> void:
	character.rotate_y(-mouse_delta.x * sensitivity)
	camera.rotate_x(-mouse_delta.y * sensitivity)
	camera.rotation.x = clampf(camera.rotation.x, deg_to_rad(-89), deg_to_rad(89))
