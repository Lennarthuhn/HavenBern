extends CharacterBody2D




func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	velocity = direction * 500
	move_and_slide()






func _on_area_2d_body_entered(body: Node2D) -> void:
	print("start")
	get_tree().change_scene_to_file("res://scenes/game.tscn") # Replace with function body.
