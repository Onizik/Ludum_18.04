extends Area2D
signal hit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	$test.visible = true
	Global.action_visible = true
	$doornumber.text = body.name
	match body.name:
		"item1":
			$itemcount.text = "first"
		"item2":
			$itemcount.text = "second"
		"item3":
			$itemcount.text = "third"
	
	
	


func _on_Area2D_body_exited(body):
	$test.visible = false
	Global.action_visible = false
	


func _on_Area2D_area_entered(area):
	$test.visible = true
	Global.action_visible = true
	$doornumber.text = area.name


func _on_Area2D_area_exited(area):
	$test.visible = false
	Global.action_visible = false
