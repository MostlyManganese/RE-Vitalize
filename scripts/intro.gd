extends Node2D
@onready var beep = $AnimatedSprite2D
@onready var beepsfx = $Beep
@onready var beepsfx2 = $ReverseBeep
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	beep.play("beep")
	beepsfx.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.



func _process(delta: float) -> void:
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	if beep.animation == "beep2":
		beep.stop()
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		beep.play_backwards("beep2")


func _on_audio_stream_player_2d_finished() -> void:
	beepsfx2.play()
