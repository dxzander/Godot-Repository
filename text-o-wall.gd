extends Node2D

@export var color: Color
@export_range(0, 15) var line_number: int

var animation_start_position = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.label_settings.font_color = color
	$AnimationPlayer.play("Text Slide")
	pass # Replace with function body.
