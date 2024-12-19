class_name EndTurnButton
extends Area3D
var player : Player
var mana_card : PackedScene = preload("res://mana_card.tscn")
var slug : PackedScene = preload("res://slug.tscn")
var hand : Node3D
var example_hand : Array[PackedScene] = [slug, slug, mana_card, mana_card, mana_card]
var card_positions : Array[Vector3] = [Vector3(-0.5, 0, 0), 
						Vector3(-0.25, 0, 0),
						Vector3(0,0,0),
						Vector3(0.25, 0, 0),
						Vector3(0.5,0,0)]

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
	
		for card in hand.get_children():
			card.queue_free()
		
		for i in range(5):
			var card_instance = example_hand[i].instantiate()
			var card = card_instance as Card
			card.player = player
			hand.add_child(card)
			card.position = card_positions[i]
		
		player.set_mana(0)
