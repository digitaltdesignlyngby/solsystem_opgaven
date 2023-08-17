extends Node2D

var sol_pos		= Vector2(512,300)
var jord_pos		= Vector2(100,0)
var maane_pos	= Vector2(50,0)
var mars_pos		= Vector2(200,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	jord_pos 	= jord_pos.rotated(0.01)
	maane_pos	= maane_pos.rotated(0.03)
	mars_pos		= mars_pos.rotated(0.005)
	update()
	pass


func _draw():
	draw_circle(sol_pos,30,Color.yellow)
	draw_circle(sol_pos + jord_pos,10,Color.blue)
	draw_circle(sol_pos + jord_pos + maane_pos,5,Color.white)
	draw_circle(sol_pos + mars_pos,8,Color.red)
	
