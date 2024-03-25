extends Node2D

@onready var asp = $AudioStreamPlayer

var volume = -5

func _ready():
	AudioServer.set_bus_volume_db(0, volume)
	asp.play()

func _on_audio_stream_player_2d_finished():
	asp.play()
