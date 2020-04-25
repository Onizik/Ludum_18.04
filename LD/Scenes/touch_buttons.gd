extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Global.action_visible:
		$action.visible = true
	else: $action.visible = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_right_pressed():
	Global.right = true


func _on_right_released():
	Global.right = false


func _on_left_pressed():
	Global.left = true


func _on_left_released():
	Global.left = false


func _on_action_pressed():
	Global.action = true


func _on_action_released():
	Global.action = false
