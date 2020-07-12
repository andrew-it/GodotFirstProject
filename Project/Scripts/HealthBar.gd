extends Node2D

export (PackedScene) var Heart


func update_health_bar(lives_count):
	for child in get_children():
		child.free()

	for i in lives_count:
		var heart = Heart.instance()
		add_child(heart)
		heart.position.x += 40 * i
