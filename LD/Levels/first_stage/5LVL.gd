extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("2")

func _process(delta):
	if Global.item1 :
		$item1/CollisionShape2D.disabled = true
		$item1.visible = false

	
