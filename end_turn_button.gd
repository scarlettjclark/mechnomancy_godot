extends Area3D
var mana_card = preload("res://mana_card.tscn")
var slug = preload("res://slug.tscn")

var example_hand = [slug, slug, mana_card, mana_card]

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
		var hand : Node3D = get_node("../Hand")
		for card in hand.get_children():
			card.queue_free()
		
		for card in example_hand:
			var card_instance = card.instantiate()
			hand.add_child(card_instance)
