extends Node3D

@export var Zero_y : Node3D
@export var Zero_x : Node3D
@export var Speed = 0.01
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		Zero_y.rotate_y(event.relative.x * Speed)
		Zero_x.rotate_x(event.relative.y * Speed)
		Zero_x.rotation.x = clamp(Zero_x.rotation.x, deg_to_rad(-90),deg_to_rad(90))
