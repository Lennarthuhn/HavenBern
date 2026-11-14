extends Area2D
func _on_body_entered(body: Node2D) -> void:
	body.velocity.y = -2000
	body.velocity.x = 1000
