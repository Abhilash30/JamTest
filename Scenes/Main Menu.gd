extends Node

func _ready():
	$MarginContainer/VBoxContainer/TextureButton.grab_focus()
	pass

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/TextureButton.is_hovered():
		$MarginContainer/VBoxContainer/TextureButton.grab_focus()
	elif $MarginContainer/VBoxContainer/TextureButton2.is_hovered():
		$MarginContainer/VBoxContainer/TextureButton2.grab_focus()
	pass

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Scenes/Scene-1.tscn")
	pass


func _on_TextureButton2_pressed():
	get_tree().quit()
	pass
