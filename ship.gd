extends CharacterBody2D

# constants
const ACCELERATION : float = 1. # in future based on wind, ship direction, sail orientation, sail deployment

# variables
var speed : float = 0
var orders_speed : float = 0
var orders_direction : float = 0

func _process(delta):
	orders_direction = Input.get_axis("ui_left", "ui_right")
	orders_speed = Input.get_axis("ui_up", "ui_down")


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = move_toward(velocity.x, direction * speed, ACCELERATION)

	move_and_slide()
