extends KinematicBody2D
## This script controls movement: 

const UP = Vector2(0, -1)
const RELOAD_TIME = 0.5

# Declare member variables here.
var arrow_scene = preload("res://Arrow.tscn")
var motion = Vector2(0,0)
var reloading = 0.0

export var speed = 200
export var jump_force = -500
export var gravity = 20
export var arrow_speed = 1000 
export var shot_body_offset = 60

func _ready():
	$PlayerArea.connect("area_entered", self, "hit")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0
		
	motion = move_and_slide(motion, UP)
		
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		motion.y = jump_force
		
	if not is_on_floor():
		motion.y += gravity
		
	# Shoot: 
	# If the triger is pressed and we have reloaded, then Player can shoot
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and reloading <= 0.0:
		player_shoots()
	reloading -= delta
	

func player_shoots():
			## Get aim and arrow direction
		var aim_position = get_global_mouse_position() 
		var direction = (aim_position - get_position()).normalized()		
		var arrow_velocity = Vector2(arrow_speed * direction.x, arrow_speed * direction.y)
		
		## create the arrow (outside the Player):
		var arrow_node = arrow_scene.instance()
		arrow_node.set_position(global_position + shot_body_offset * direction)
		## Give the arrow initial velocity and make it look the right way
		#arrow_node.look_at(aim_position)
		arrow_node.set_initial_motion(arrow_velocity)
		## Add the arrow to the World scene: 
		get_parent().add_child(arrow_node)
		## start reloading: 
		reloading = RELOAD_TIME
	
func hit(object):
	# die 
	if object.name == 'EnemyArea':
		modulate.a = 0.2
	print('Player: FFFFFFFFFFFFFFFFFFFFFF')
	#queue_free()
	
