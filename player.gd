class_name Player
extends Node3D

var mana_tracker : Label3D
var hand : Node3D
var deck : Node3D
var discard : Node3D
var end_turn_button : EndTurnButton
var mana_stat : int = 0
var target : Enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	mana_tracker = get_node("Mana")
	update_text()
	hand = get_node("Hand")
	discard = get_node("Discard")
	deck = get_node("Deck")
	end_turn_button = get_node("EndTurnButton")
	end_turn_button.player = self

func gain_mana(number_gained : int):
	mana_stat += number_gained
	update_text()

func set_mana (number_set : int):
	mana_stat = number_set
	update_text()

func damage_target(damage_number : int):
	target.damage(damage_number)
	
func update_text():
	mana_tracker.text = str(mana_stat)

func draw():
	if deck.get_child_count() == 0:
		while discard.get_child_count() != 0:
			var card_index = randi_range(0, discard.get_child_count() - 1)
			var card = discard.get_child(card_index)
			discard.remove_child(card)
			deck.add_child(card)
	if deck.get_child_count() != 0:
		var card = deck.get_child(0)
		deck.remove_child(card)
		hand.add_child(card)
		card.show()
		
