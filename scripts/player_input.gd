extends Node

func get_direction() -> Vector2:
	return Input.get_vector("strafe_left", "strafe_right", "forward", "back")

func is_jump_requested() -> bool:
	return Input.is_action_just_pressed("jump")
