extends Area2D





	# Check if the entering body is actually your player





func _on_body_entered(body: Node2D) -> void:
	body.velocity.y = -2000
	body.velocity.x = -2000
