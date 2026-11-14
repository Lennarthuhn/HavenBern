extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * 500
	move_and_slide()

	


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("leaf"):
		area.queue_free()
