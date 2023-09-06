extends Node2D

var square = preload("res://Square.tscn")
var spawn_points = []
var start_y = 18
var start_z = 0
var tmp_x = []
var tmp_y = []
var len_x = 0
var len_y = 0
var mv = 60
var min_lines = 1
var max_lines = 19
var num_max_lines = 8
var lines_cone = 0
var lines = []

# Called when the node enters the scene tree for the first time.
func _ready():
	# lines
	for lines_cone in range(min_lines, max_lines+1, 2):
		lines.append(lines_cone)
	for aux in range(0, num_max_lines):
		lines.append(max_lines)
	for lines_cone in range(max_lines, min_lines-1, -2):
		lines.append(lines_cone)
	print(lines)
	
	# points
	for start_x in range(0, 33+18, 2):
		tmp_x = []
		tmp_y = []

		if start_x < 33:
			for y in range(start_y, -1, -1):
				tmp_y.append(y)
			for x in range(start_x, -1, -1):
				tmp_x.append(x)
		else:
			start_y -= 2
			for y in range(start_y, -1, -1):
				tmp_y.append(y)
			for x in range(32, -1, -1):
				tmp_x.append(x)

		len_x = len(tmp_x)
		len_y = len(tmp_y)

		if len_x <= len_y:
			start_z = len_x
		else:
			start_z = len_y

		for z in range(0, start_z):
			spawn_points.append([tmp_x[z] * mv, tmp_y[z] * mv])
	pass # Replace with function body.

func _process(_delta):
#	for line in lines:
#		if spawn_points:
#			var square_instance = square.instantiate()
#			square_instance.position.x = spawn_points[0][0]
#			square_instance.position.y = spawn_points[0][1]
#			spawn_points.pop_front()
#			add_child(square_instance)
	pass

func _on_timer_timeout():
	for line in lines:
		if spawn_points:
			var square_instance = square.instantiate()
			square_instance.position.x = spawn_points[0][0]
			square_instance.position.y = spawn_points[0][1]
			spawn_points.pop_front()
			add_child(square_instance)
		else:
			$Timer.stop()
	pass # Replace with function body.
