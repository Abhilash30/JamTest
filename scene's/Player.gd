extends KinematicBody2D


export (int) var speed = 200
export (int) var jump_speed = -300
export (int) var gravity = 800

var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.

func get_input():
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if velocity.y < 0 && Input.is_action_just_released("ui_up"):
		velocity.y = velocity.y * 0.5
	
func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = jump_speed



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
