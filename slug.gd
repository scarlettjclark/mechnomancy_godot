extends Card

@export var target : Enemy;
func _ready():
	target = get_node("../../../Enemy")

func play():
	target.damage(1);
