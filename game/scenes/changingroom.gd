extends Area2D


func _on_body_exited(body: Node2D) -> void:
	body.get_node_or_null("Sprite2D").texture= load("res://Image/Kitty.webp")
	body.get_node_or_null("Sprite2D").scale.x= 0.4
	body.get_node_or_null("Sprite2D").scale.y= 0.4
