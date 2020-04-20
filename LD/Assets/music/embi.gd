extends AudioStreamPlayer2D
var menu = true
var win = false
var death = false
var game = false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if menu:
		Embi.play()
	else: $menu.stop()
	if win:
		$win.play()
	else: $win.stop()
	if death:
		$death.play()
	else: $death.stop()
	if game:
		$gams.play()
	else: $gams.stop()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
