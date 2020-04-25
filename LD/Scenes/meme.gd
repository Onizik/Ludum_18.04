extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("1")
	Mememusic.play()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	Mememusic.stop()
	get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_TouchScreenButton_pressed():
	Mememusic.stop()
	get_tree().change_scene("res://Scenes/Menu.tscn")
