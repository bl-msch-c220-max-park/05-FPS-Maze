extends Area

func _on_Key_body_entered(body):
	if body.name == "Player":
		var end = get_node_or_null("/root/Game/Maze/End")
		if end != null:
			end.unlock()
			queue_free() # Replace with function body.
