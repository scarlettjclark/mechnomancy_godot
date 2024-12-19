extends Node3D

var player : Player
var hand : Node3D
var end_turn_button : EndTurnButton
var enemy : Enemy

func _ready():
	hand = get_node("Hand")
	end_turn_button = get_node("EndTurnButton")
	end_turn_button.hand = hand
	end_turn_button.player = get_node("Player")
	player = get_node("Player")
	enemy = get_node("Enemy")
	player.target = enemy
