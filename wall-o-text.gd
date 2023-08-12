extends Node2D

var text = preload("res://text-o-wall.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_timer_timeout():
	#vertical
	var text_instance = text.instantiate()
	add_child(text_instance)
	pass # Replace with function body.
