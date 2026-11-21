extends Node2D
@onready var beep = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	beep.play("beep")

# Called every frame. 'delta' is the elapsed time since the previous frame.



func _process(delta: float) -> void:
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	if beep.animation == "beep2":
		beep.stop()
		get_tree().change_scene_to_file("res://menu.tscn")
	else:
		beep.play_backwards("beep2")
