extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	var direction = Vector2()
	direction.x = Global.ggpos
	position += direction.normalized() * delta * Global.enemyspeed
	if Global.enpos == true:
		position.x = -1276.316
		Global.enpos = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
