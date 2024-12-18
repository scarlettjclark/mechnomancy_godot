extends Card

@export var target : Enemy;

func play():
	target.damage(1);
