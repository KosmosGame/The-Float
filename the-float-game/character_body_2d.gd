extends CharacterBody2D
var hunger = 50.0
var speed = 300

func _physics_process(delta):
	# Get movement input (Arrow keys or WASD)
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	#
	velocity = direction * speed
	move_and_slide()
	
