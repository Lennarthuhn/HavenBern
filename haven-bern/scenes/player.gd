extends CharacterBody2D

var leaf_count = 0


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * 500
	move_and_slide()

	


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("leaf") and not $heldleaf.visible:
		area.queue_free()
		$heldleaf.visible = true
	if area.is_in_group("basket") and $heldleaf.visible:
		$heldleaf.visible = false
		leaf_count += 1
		$CanvasLayer/leafcountdisplay.text = "leaves: " + str(leaf_count)
