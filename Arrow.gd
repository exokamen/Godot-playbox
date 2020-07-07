extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var motion = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$ArrowArea.connect("area_entered", self, "hit")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	motion = move_and_slide(motion)
	if (is_on_floor() or is_on_ceiling() or is_on_wall()):
		queue_free()
		
	if not is_on_floor():
		motion.y += get_parent().get_gravity()
		rotation = motion.angle()
	
func hit(object):
	if object.name == 'EnemyArea':
		print('Arrow: nailed it!')
		#queue_free()

func set_initial_motion(m):
	motion = m

