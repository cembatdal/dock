extends Node

const STARTING_LOCATION = preload("res://scenes/inspection_dock.tscn")
const INSPECTOR_SCENE = preload("res://scenes/inspector.tscn")
const CARGO_BOX_SCENE = preload("res://scenes/cargo_box.tscn")

@onready var location_manager = $LocationManager
@onready var scene_creator = $SceneCreator
@onready var player_manager = $PlayerManager
@onready var cargo_manager = $CargoManager
@onready var location_container: Node3D = $LocationContainer

func _ready() -> void:
	var location = location_manager.load_location(STARTING_LOCATION, location_container)
	var inspector = scene_creator.create(INSPECTOR_SCENE)
	player_manager.place_player(inspector, location, location.INSPECTOR_POSITION)
	var cargo_box = scene_creator.create(CARGO_BOX_SCENE)
	cargo_manager.place_cargo_box(cargo_box, location, location.CARGO_BOX_POSITION)
