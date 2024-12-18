extends Area3D
var mana_card = preload("res://mana_card.tscn")
var slug = preload("res://slug.tscn")

var example_hand = [slug, slug, mana_card, mana_card, mana_card]
var card_positions = [Vector3(-0.5, 0, 0), 
						Vector3(-0.25, 0, 0),
						Vector3(0,0,0),
						Vector3(0.25, 0, 0),
						Vector3(0.5,0,0)]

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
		var hand : Node3D = get_node("../Hand")
		for card in hand.get_children():
			card.queue_free()
		
		for i in range(5):
			var card_instance = example_hand[i].instantiate()
			hand.add_child(card_instance)
			card_instance.position = card_positions[i]
