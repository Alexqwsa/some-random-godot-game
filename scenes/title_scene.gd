extends Node2D
@onready var settoing = $settoing

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_scene.tscn")


func _on_settoing_pressed() -> void:
	settoing.visible = true

func _on_quit_button_pressed() -> void:
	get_tree().quit()
