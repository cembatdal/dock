extends CharacterBody3D

@export var mouse_sensitivity: float = 0.002
@onready var camera: Camera3D = $Camera3D
@onready var movement = $CharacterMovement
@onready var player_input = $PlayerInput
@onready var look = $CharacterLook
@onready var mouse_capture = $MouseCapture

func _ready() -> void:
	mouse_capture.capture()

func _unhandled_input(event: InputEvent) -> void:
	mouse_capture.handle_event(event)
	if event is InputEventMouseMotion and mouse_capture.is_captured():
		look.apply_look(self, camera, event.screen_relative, mouse_sensitivity)

func _physics_process(delta: float) -> void:
	movement.move_character(
		self, player_input.get_direction(), player_input.is_jump_requested(), delta
	)
