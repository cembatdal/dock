extends Node

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

func move_character(
	character: CharacterBody3D, input_direction: Vector2, jump_requested: bool, delta: float
) -> void:
	if not character.is_on_floor():
		character.velocity += character.get_gravity() * delta

	if jump_requested and character.is_on_floor():
		character.velocity.y = JUMP_VELOCITY

	var direction := (
		character.transform.basis * Vector3(input_direction.x, 0, input_direction.y)
	).normalized()

	if direction:
		character.velocity.x = direction.x * SPEED
		character.velocity.z = direction.z * SPEED
	else:
		character.velocity.x = move_toward(character.velocity.x, 0, SPEED)
		character.velocity.z = move_toward(character.velocity.z, 0, SPEED)

	character.move_and_slide()
