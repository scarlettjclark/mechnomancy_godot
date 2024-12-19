extends Node3D

var player : Player
var hand : Node3D
var end_turn_button : EndTurnButton
var enemy : Enemy

func _ready():
	player = get_node("Player")
	enemy = get_node("Enemy")
	player.target = enemy
