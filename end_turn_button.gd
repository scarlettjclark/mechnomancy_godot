class_name EndTurnButton
extends Area3D
var player : Player
var mana_card : PackedScene = preload("res://mana_card.tscn")
var slug : PackedScene = preload("res://slug.tscn")
var example_hand : Array[PackedScene] = [slug, slug, mana_card, mana_card, mana_card]
var card_positions : Array[Vector3] = [Vector3(-0.5, 0, 0), 
						Vector3(-0.25, 0, 0),
						Vector3(0,0,0),
						Vector3(0.25, 0, 0),
						Vector3(0.5,0,0)]

func _on_input_event(camera, event, event_position, normal, shape_idx):
	var mouse_click = event as InputEventMouseButton
	if mouse_click and mouse_click.button_index == 1 and mouse_click.pressed:
	
		for card in player.hand.get_children():
			card.queue_free()
		
		for i in range(5):
			player.draw()
		
		player.set_mana(0)
