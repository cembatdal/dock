extends Node

func capture() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func handle_event(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

	if event is InputEventMouseButton and event.pressed:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func is_captured() -> bool:
	return Input.mouse_mode == Input.MOUSE_MODE_CAPTURED
