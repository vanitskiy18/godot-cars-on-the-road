extends TileMap


var score1=0
var score2=0
var fuels=[]
var time=30
var size=20

func _ready():
	$Label.text='PLAYER 1 SCORE: '+str(score1)
	$Label3.text='PLAYER 2 SCORE: '+str(score2)
	$Label2.text='TIME: '+str(time)
	fuels=[$Fuel,$Fuel2,$Fuel3,$Fuel4,$Fuel5,$Fuel6,$Fuel7,$Fuel8,$Fuel9,$Fuel10,$Fuel11,$Fuel12,$Fuel13,$Fuel14,$Fuel15,$Fuel16,$Fuel17,$Fuel18,$Fuel19,$Fuel20]
	$ColorRect2.hide()
	$Label4.hide()
func _process(delta):
	$Label2.text='TIME: '+str(time)
	var car1_y=$Car.position.y
	var car1_x=$Car.position.x
	for f in fuels:
		var x1=f.position.x
		var y1=f.position.y
		var check_x=car1_x>x1-size and car1_x<x1+size
		var check_y=car1_y>y1-size and car1_y < y1+size
		if check_x and check_y:
			score1+=1
			$Label.text='PLAYER 1 SCORE: '+str(score1)
			f.hide()
			fuels.remove(fuels.find(f))
	var car2_y=$Car2.position.y
	var car2_x=$Car2.position.x
	for f in fuels:
		var x2=f.position.x
		var y2=f.position.y
		var check1_x=car2_x>x2-size and car2_x<x2+size
		var check1_y=car2_y>y2-size and car2_y < y2+size
		if check1_x and check1_y:
			score2+=1
			$Label3.text='PLAYER 2 SCORE: '+str(score2)
			f.hide()
			fuels.remove(fuels.find(f))
	time-=delta
	if time<=0:
		time=0
		$ColorRect2.show()
		$Label4.show()
		if score1>score2:
			$Label4.text='Player 1 win!'
		elif score2>score1:
			$Label4.text='Player 2 win!'
		else:
			$Label4.text='Draw!'


