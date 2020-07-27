extends KinematicBody2D


var motion = Vector2()
var Speed = 200
var UP = Vector2(0, -1)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	motion.y += 10
	if Input.is_action_pressed("ui_right"):
		motion.x = Speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -Speed
	else:
		motion.x = 0
	move_and_slide(motion, UP)
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -200
			
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
