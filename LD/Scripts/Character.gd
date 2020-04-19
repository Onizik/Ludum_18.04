extends Node2D
var speed = 400
var screen_size





# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var direction = Vector2()
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
		$Area2D/Sprite.visible = false
		$Area2D/left.visible = true
		$Area2D/right.visible = false
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		$Area2D/Sprite.visible = false
		$Area2D/right.visible = true
		$Area2D/left.visible = false
	if Input.is_action_pressed("ui_accept"):
		if $Area2D/test.visible:
			match $Area2D/itemcount.text:
				"first":
					Global.items+=1
			match $Area2D/doornumber.text:
				"1":
					get_tree().change_scene("res://Levels/first_stage/firstLVL.tscn")
				"01":
					get_tree().change_scene("res://Levels/main_stage/Main.tscn")
				"2":
					get_tree().change_scene("res://Levels/first_stage/secondLVL.tscn")
				"3":
					get_tree().change_scene("res://Levels/first_stage/thirdLVL.tscn")
				"4":
					get_tree().change_scene("res://Levels/first_stage/4LVL.tscn")
				"5":
					get_tree().change_scene("res://Levels/first_stage/5LVL.tscn")
				"6":
					get_tree().change_scene("res://Levels/second_stage/6LVL.tscn")
				"7":
					get_tree().change_scene("res://Levels/second_stage/7LVL.tscn")
				"8":
					get_tree().change_scene("res://Levels/second_stage/8LVL.tscn")
				"9":
					get_tree().change_scene("res://Levels/second_stage/9LVL.tscn")
				"10":
					get_tree().change_scene("res://Levels/second_stage/10LVL.tscn")
				"11":
					get_tree().change_scene("res://Levels/third_stage/11LVL.tscn")
				"12":
					get_tree().change_scene("res://Levels/third_stage/12LVL.tscn")
				"13":
					get_tree().change_scene("res://Levels/third_stage/13LVL.tscn")
				"14":
					get_tree().change_scene("res://Levels/third_stage/14LVL.tscn")
				"15":
					get_tree().change_scene("res://Levels/third_stage/15LVL.tscn")


	position += direction.normalized() * delta * speed
	position.x = clamp(position.x, 0, screen_size.x)



func _on_Character_item():
	pass # Replace with function body.
