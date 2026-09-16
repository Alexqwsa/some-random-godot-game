extends Node2D
@onready var lives_container: HBoxContainer = $lives_counter
@onready var live: TextureRect = $lives_counter/placeholder
@onready var live2: TextureRect = $lives_counter/placeholder2
@onready var live3: TextureRect = $lives_counter/placeholder3
@onready var live4: TextureRect = $lives_counter/placeholder4
@onready var live5: TextureRect = $lives_counter/placeholder5
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time

func _ready() -> void:
	await Timer(5.0)
	
	if Global.minigames_done < 3:
		Global.minigames_done = Global.minigames_done +1
		get_tree().change_scene_to_file("res://scenes/minigame_" + str(Global.minigames_done) + ".tscn")
		
	else:
		get_tree().change_scene_to_file("res://scenes/title_scene.tscn")

func _process(delta: float) -> void:
	match Global.lives:
		4:
			live.hide()
		3:
			live.hide()
			live2.hide()
		2:
			live.hide()
			live2.hide()
			live3.hide()
		1:
			live.hide()
			live2.hide()
			live3.hide()
			live4.hide()
		0:
			lives_container.hide()
	timer.text = str(time)
	level.text = (Global.minigames_done)
func Timer(start_time: float):
	
	time = start_time
	
	while  time > 0.0:
		await wait(0.1)
		time -= 0.1
		
	return

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
