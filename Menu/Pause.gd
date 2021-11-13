extends CanvasLayer


func _ready():
	set_visible(false)
	
func _input(event):
	if event.is_action_pressed("menu"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused 
	


func _on_Continue_pressed():
	get_tree().paused = false
	set_visible(false)
	
func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
