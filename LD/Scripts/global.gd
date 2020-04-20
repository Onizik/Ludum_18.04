extends Node
var item1 = false
var item2 = false
var item3 = false
var loh = false

var ggpos =0
var enpos = false
var enemyspeed = 50
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	enemyspeed += 1
