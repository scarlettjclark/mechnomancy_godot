class_name Card
extends Area3D

var player : Player

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
		play()
		var discard = player.discard
		var hand = player.hand
		hand.remove_child(self)
		discard.add_child(self)
		self.hide()
	

func play():
	pass
