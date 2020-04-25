extends Node
var item1 = false
var item2 = false
var item3 = false
var loh = false
var doormeme = false

var ggpos =0
var enpos = false
var enemyspeed = 50
var settimer = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var right = false
var left = false
var action = false
var action_visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	if settimer:
		$Timer.start()
	else: 
		$Timer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	enemyspeed += 1
