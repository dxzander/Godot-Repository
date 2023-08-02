extends Node2D

var lines = preload("res://LineAnim.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_timer_timeout():
	#vertical
	var line_instance = lines.instantiate()
	add_child(line_instance)
	#horizontal
	line_instance = lines.instantiate()
	line_instance.position.y = 1920
	line_instance.rotation_degrees = -90
	add_child(line_instance)
	pass # Replace with function body.
