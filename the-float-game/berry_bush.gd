extends StaticBody2D

func _input_event(_viewport, event, _shape_idx):
	# Detect left mouse click
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		eat_berry()

func eat_berry():
	# Find the player node in the world
	var player = get_tree().get_root().find_child("CharacterBody2D", true, false)
	
	if player:
		# Add 15 hunger but cap it at 100
		player.hunger = min(player.hunger + 15, 100)
		print("Yum! Bush consumed. Hunger: ", int(player.hunger))
	
	# This makes the bush vanish immediately
	queue_free()
