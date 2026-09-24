extends Node

const STARTING_LOCATION = preload("res://scenes/inspection_dock.tscn")
const INSPECTOR_SCENE = preload("res://scenes/inspector.tscn")
const CARGO_BOX_SCENE = preload("res://scenes/cargo_box.tscn")

@onready var location_manager: LocationManager = $LocationManager
@onready var scene_creator: SceneCreator = $SceneCreator
@onready var player_manager: PlayerManager = $PlayerManager
@onready var cargo_manager: CargoManager = $CargoManager
@onready var location_container: Node3D = $LocationContainer

func _ready() -> void:
	var location := scene_creator.create(STARTING_LOCATION) as InspectionDock
	location_manager.load_location(location, location_container)
	var inspector := scene_creator.create(INSPECTOR_SCENE) as Inspector
	player_manager.place_player(inspector, location, InspectionDock.INSPECTOR_POSITION)
	var cargo_box := scene_creator.create(CARGO_BOX_SCENE)
	cargo_manager.place_cargo_box(cargo_box, location, InspectionDock.CARGO_BOX_POSITION)
	inspector.activate()
