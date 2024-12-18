extends Card

@export
var mana_tracker : Label3D;

func _ready():
	mana_tracker = get_node("../../Mana")

func play():
	mana_tracker.text = str(int(mana_tracker.text) + 1)
