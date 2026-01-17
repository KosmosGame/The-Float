extends Node2D

# Load the bush template
var bush_scene = preload("res://berry_bush.tscn")

func _ready():
	# This makes sure the "random" numbers are different every time you play
	randomize()
	
	# Spawn 25 bushes (you can change this number)
	for i in range(25):
		spawn_bush()

func spawn_bush():
	var new_bush = bush_scene.instantiate()
	
	# Pick random coordinates. 
	# Adjust 3000 to match your map size (ColorRect size).
	var x_pos = randf_range(100, 3000)
	var y_pos = randf_range(100, 3000)
	
	new_bush.position = Vector2(x_pos, y_pos)
	add_child(new_bush)
