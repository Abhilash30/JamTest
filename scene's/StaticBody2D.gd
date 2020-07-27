extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var animation_player = $AnimationPlayer
onready var Black = $CanvasModulate/Black
# Called when the node enters the scene tree for the first time.
func on_ready():
	
	pass # Replace with function body.




func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		
		yield(get_tree().create_timer(0.1), "timeout")
		animation_player.play("FadeIn")
	  
		yield(animation_player, "animation_finished")
		get_tree().change_scene("res://scene's/Node.tscn")
		animation_player.play_backwards("FadeIn")
	pass # Replace with function body.
