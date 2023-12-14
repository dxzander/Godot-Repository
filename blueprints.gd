extends Node2D

var lines = preload("res://LineAnim.tscn")
var counter = 0
var counterAss = 0
var thickLine = 6.0
var thinLine = 2.0
var curLine = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_timer_timeout():
	#vertical
	var line_instance = lines.instantiate()
	curLine = counter_mgmt()
	if curLine == 0:
		line_instance.lwidth = thickLine
	else:
		line_instance.lwidth = thinLine
	add_child(line_instance)
	#horizontal
	line_instance = lines.instantiate()
	line_instance.position.y = 1920
	line_instance.rotation_degrees = -90
	if curLine == 0:
		line_instance.lwidth = thickLine
	else:
		line_instance.lwidth = thinLine
	add_child(line_instance)
	pass # Replace with function body.

func counter_mgmt():
	counterAss = counter
	counter += 1
	if counter > 4:
		counter = 0
	return counterAss
