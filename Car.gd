extends Sprite


var speed=100

func _ready():
	rotation_degrees=180
	
func _process(delta):
	if Input.is_action_pressed("ui_d"):
		rotation_degrees=0
		position.x+=speed*delta
	elif Input.is_action_pressed("ui_a"):
		rotation_degrees=180
		position.x-=speed*delta
	elif Input.is_action_pressed('ui_w'):
		rotation_degrees=270
		position.y-=speed*delta
	elif Input.is_action_pressed('ui_s'):
		rotation_degrees=90
		position.y+=speed*delta
