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
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_accept"):
		if $Area2D/test.visible:
			get_tree().change_scene("res://Scenes/Menu.tscn")

	position += direction.normalized() * delta * speed
	position.x = clamp(position.x, 0, screen_size.x)

