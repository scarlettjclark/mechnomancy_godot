extends Card

@export
var mana_tracker : Label3D;

func play():
	mana_tracker.text = str(int(mana_tracker.text) + 1)
