class_name Enemy
extends CharacterBody3D

@export var health_tracker : Label3D

func damage(damage : int):
	var health : int = int(health_tracker.text)
	health_tracker.text = str(health - damage)
