class_name Deck
extends Node3D

var mana_card : PackedScene = preload("res://mana_card.tscn")
var slug : PackedScene = preload("res://slug.tscn")
var player : Player
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent()
	for card_index in range(10):
		var card
		if (card_index < 7):
			card = mana_card.instantiate()
		else:
			card = slug.instantiate()
		card.player = player
		card.hide()
		add_child(card)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
