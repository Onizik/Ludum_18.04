extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("1")
func _process(delta):
	if Global.loh :
		$loh.visible = true
	else: $loh.visible = false
	
	
