class_name Card
extends Area3D

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
		play()
		queue_free()
	

func play():
	pass
