class_name Player
extends Node3D

var mana_tracker : Label3D
var mana_stat : int = 0
var target : Enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	mana_tracker = get_node("Mana")
	update_text()

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
