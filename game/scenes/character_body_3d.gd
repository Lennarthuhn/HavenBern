extends CharacterBody3D


const SPEED = 5.0
var JUMP_VELOCITY = 4.5
var vel_max =0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		vel_max= velocity.y


	# Handle jump.
	if is_on_floor():
		print(velocity.y)
		velocity.y = [-vel_max , 5 ].max()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	
	move_and_slide()


func _on_killzone_body_entered(body: Node3D) -> void:
	print("entered")
	get_tree().reload_current_scene()
	



func _on_bouncyground_area_exited(area: Area3D) -> void:
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation.y -= event.relative.x * 0.01
		rotation.x -= event.relative.y * 0.01
		rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(90))

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("left_click"):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if event.is_action_pressed("esc"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_bouncyground_area_entered(area: Area3D) -> void:
	print(velocity.y)
	velocity.y = [-velocity.y, 12 ].max()
