extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Win.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	Win.stop()


func _on_TouchScreenButton_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	Win.stop()
