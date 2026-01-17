extends CharacterBody2D

var speed = 300
var hunger = 100.0  
var hunger_drain_rate = 1.0  # Drops 1 point per second

@onready var hunger_bar = get_tree().get_root().find_child("HungerBar", true, false)

func _physics_process(delta):
	# 1. MOVEMENT CODE
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()

	# 2. HUNGER DRAIN CODE
	if hunger > 0:
		hunger -= hunger_drain_rate * delta
	
	# 3. UPDATE THE VISUAL BAR
	if hunger_bar:
		hunger_bar.value = hunger
	
