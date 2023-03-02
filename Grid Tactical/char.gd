extends KinematicBody2D
const SPEED = 960
var motion = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func cartes_to_iso(cartesian):
	var pos = Vector2()
	pos.x = (cartesian.x - cartesian.y)
	pos.y = ((cartesian.x + cartesian.y)/2)
	return Vector2(pos.x, pos.y)

func _physics_process(delta):
	var direction = Vector2()

	if Input.is_action_just_pressed("ui_down"):
		direction += Vector2(0,1)
	
	elif Input.is_action_just_pressed("ui_up"):
		direction += Vector2(0,-1)
		
	if Input.is_action_just_pressed("ui_right"):
		direction += Vector2(1,0)
	
	elif Input.is_action_just_pressed("ui_left"):
		direction += Vector2(-1,0)
		
	motion = direction.normalized() * SPEED * delta
	motion = cartes_to_iso(motion)
	
	move_and_collide(motion)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
