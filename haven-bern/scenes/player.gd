extends CharacterBody2D

<<<<<<< HEAD
var leafcount = 0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
=======
var leaf_count = 0
>>>>>>> 8c9340ef71a9733ac742874737165bf223147d0c


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * 500
	move_and_slide()

	


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("leaf") and not $heldleaf.visible:
		area.queue_free()
		$heldleaf.visible = true
<<<<<<< HEAD

	if area.is_in_group("Basquet") and $heldleaf.visible:
		$heldleaf.visible = false
		leafcount+=1
		$CanvasLayer/leafcount.text = "leaves" + str(leafcount)
=======
	if area.is_in_group("basket") and $heldleaf.visible:
		$heldleaf.visible = false
		leaf_count += 1
		$CanvasLayer/leafcountdisplay.text = "leaves: " + str(leaf_count)
>>>>>>> 8c9340ef71a9733ac742874737165bf223147d0c
