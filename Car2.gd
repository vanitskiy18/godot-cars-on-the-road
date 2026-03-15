extends Sprite

var speed=100

func _ready():
	rotation_degrees=180
	
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		rotation_degrees=0
		position.x+=speed*delta
	elif Input.is_action_pressed("ui_left"):
		rotation_degrees=180
		position.x-=speed*delta
	elif Input.is_action_pressed('ui_up'):
		rotation_degrees=270
		position.y-=speed*delta
	elif Input.is_action_pressed('ui_down'):
		rotation_degrees=90
		position.y+=speed*delta


