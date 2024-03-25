extends Node2D

@onready var asp = $AudioStreamPlayer2D
@onready var start_button = $Background/Start_Button as Button
@onready var exit_button = $Background/Exit_Button as Button
@onready var start_level = preload("res://main.tscn") as PackedScene

var volume = -5

func _ready():
	AudioServer.set_bus_volume_db(0, volume)
	asp.play()

	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	pass
	
func on_exit_pressed() -> void:
	get_tree().quit()

func _on_audio_stream_player_2d_finished():
	asp.play()
