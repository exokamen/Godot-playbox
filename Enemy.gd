extends KinematicBody2D

# Declare member variables here. Examples:
export var gravity = 20
export var enemy_speed = 50
export var enemy_delay = 10
export var enemy_reload = 0.5
const RELOAD_TIME = 2
export var arrow_speed = 500
var motion = Vector2(0,0)
var arrow_scene = preload("res://Arrow.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$EnemyArea.connect("area_entered", self, "hit")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	enemy_reload = enemy_reload - delta # * 0.1
	## enemy shooting: 
	if enemy_reload <=0.0:
		enemy_shoots()
		## start reloading: 
		enemy_reload = RELOAD_TIME
		
	## enemy moving: 
	motion = ai_motion(delta)
	motion = move_and_slide(motion)
	if is_on_floor():
		motion.y = 0 
	#motion = Vector2(0,0)
	
	
func enemy_shoots():
		var aim_position = get_parent().get_player_position()
		var direction = (aim_position - get_position()).normalized()
		var arrow_velocity = Vector2(arrow_speed * direction.x, arrow_speed * direction.y)
		
		## create the arrow (outside the Player):
		
		#d = get_parent().add_child(arrow_scene.instance())
		#var arrow_node = get_parent().d
		var arrow_node = arrow_scene.instance()
		arrow_node.set_position(global_position + 60 * direction)
		## Give the arrow initial velocity and make it look the right way
		#arrow_node.look_at(aim_position)
		arrow_node.set_initial_motion(arrow_velocity)
		## Add the arrow to the World scene: 
		get_parent().add_child(arrow_node)

	
func hit(object):
	#die if shot by an arrow: 
	if object.name == 'ArrowArea':
		print('Enemy: I got shot through the heart!!')
		queue_free()
	#die if touched by player
	if object.name == 'PlayerArea':
		print('Enemy: Eeeeeewwwww!! I touched it! Icky!')
		queue_free()

	
func ai_motion(delta): 
	if enemy_delay <= 0.0:
		var direction = (get_parent().get_player_position() - get_position()).normalized()
		motion = Vector2(enemy_speed * direction.x, enemy_speed * direction.y)
		look_at(get_parent().get_player_position())
	enemy_delay =- delta
	return motion
	
