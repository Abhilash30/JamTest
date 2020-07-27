extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var anim = get_node("AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func on_ready():
	
	pass # Replace with function body.




func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		anim.play("FadeOut (copy)")
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://scene's/Node.tscn")
	pass # Replace with function body.
