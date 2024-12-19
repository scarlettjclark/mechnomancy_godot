class_name Hand
extends Node3D

@export var card_gap : float = 0.25

func _process(delta):
	# Ensure cards in hand are centred on screen
	var hand_size = get_child_count()
	for card_index in range(hand_size): 
		var card = get_child(card_index)
		card.position.x = (-0.5 * (hand_size-1) * card_gap) + (card_index * card_gap)
