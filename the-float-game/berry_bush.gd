extends StaticBody2D

var berries_available = 3

func _input_event(viewport, event, shape_idx):
	# Checks if you clicked the left mouse button on the bush
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if berries_available > 0:
			eat_berry()
		else:
			print("No berries left!")

func eat_berry():
	berries_available -= 1
	print("Yum! Berries left: ", berries_available)
	
	# This finds your player and tells them to eat
	var player = get_tree().get_root().find_child("CharacterBody2D", true, false)
	if player:
		player.hunger = min(player.hunger + 10, 100) # Adds 10 hunger
		print("New Hunger: ", int(player.hunger))
