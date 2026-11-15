extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * 0.01
		rotation.x -= event.relative.y * 0.01
		rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(90))
