extends Node2D

export (PackedScene) var Heart


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func update_health_bar(lives_count):
	for child in get_children():
		child.free()

	for i in lives_count:
		var heart = Heart.instance()
		add_child(heart)
		heart.position.x += 40 * i


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
