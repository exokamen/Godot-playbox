extends Node

# Declare member variables here:
var enemy_scene = preload("res://Enemy.tscn")

var enemy_loading = 0.0
const new_enemy_timer = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if enemy_loading <=0.0:
		var enemy_node = enemy_scene.instance()
		enemy_node.set_position($Player.global_position + Vector2(0, -250))
		add_child(enemy_node)
		enemy_loading = new_enemy_timer

	enemy_loading -= delta
		
func _unhandled_input(event):
    if event is InputEventKey:
        if event.pressed and event.scancode == KEY_ESCAPE:
            get_tree().quit()
			
func get_gravity():
	return $Player.gravity
	
func get_player_position():
	return $Player.get_position()