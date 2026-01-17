extends Node2D

# Load the bush template we just made
var bush_scene = preload("res://berry_bush.tscn")

func _ready():
	# Let's spawn 15 bushes when the game starts
	for i in range(15):
		spawn_bush()

func spawn_bush():
	var new_bush = bush_scene.instantiate()
	
	# Pick a random spot within your map boundaries
	# Adjust these numbers based on how big your ColorRect floor is!
	var x_pos = randf_range(50, 2000) 
	var y_pos = randf_range(50, 2000)
	
	new_bush.position = Vector2(x_pos, y_pos)
	add_child(new_bush)
