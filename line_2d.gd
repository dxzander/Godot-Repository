extends Line2D

@export var time_dilation = 5.0
@export var lwidth = 5.0

var target = Vector2(0, 1920)
var t = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.width = lwidth


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	t += delta * time_dilation
	self.position = self.position.lerp(target, t)
	#print(self.position)
