extends Node2D
var ms = 0
var s = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$hands.play("main")

func _process(delta):
	if ms>9:
		s+=1
		ms=0
		
	if s%4 == 0:
		if ms>3 && ms<5:
			$norm/spooky.visible = true
		else: $norm/spooky.visible = false
	if s%8 == 0:
		if ms>3 && ms<8:
			$norm/spooky.visible = true
		else: $norm/spooky.visible = false




func _on_StartButton_pressed():
	get_tree().change_scene("res://Levels/main_stage/Main.tscn")


func _on_Timer_timeout():
	ms+=1


func _on_AboutButton_pressed():
	get_tree().change_scene("res://Scenes/about.tscn")
