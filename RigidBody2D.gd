extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input(event):
	if event.is_action_pressed("ui_left"):
		set_linear_velocity(Vector2(-200,0)) #method one
	elif event.is_action_pressed("ui_right"):
		apply_impulse(Vector2(0,0),Vector2(200,0)) #method two
	elif event.is_action_pressed("ui_up"):
		apply_impulse(Vector2(0,0),Vector2(0,-200))
	else:
		apply_impulse(Vector2(0,0),Vector2(0,0))
		set_linear_velocity(Vector2(0,0))
	