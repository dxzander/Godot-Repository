extends Node2D

@export var lwidth = 5.0
@export_range(0, 15) var line_number: int

var animation_start_position = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Line2D.width = lwidth
	animation_start_position = 32 * line_number / 16
	$AnimationPlayer.play("Displacement")
	$AnimationPlayer.seek(animation_start_position)
	pass


func _on_animation_player_animation_finished(_anim_name):
	self.queue_free()
	pass
