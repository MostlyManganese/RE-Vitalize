extends Button

@onready var start = position

func _process(delta):
	position = start + (get_global_mouse_position() * 0.04)
