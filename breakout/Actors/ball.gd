extends CharacterBody2D
#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0

@export var speed: float = 3.0
@export var max_speed: float = 10.0
var forward = Vector2(1,1).normalized()

#func _ready() -> void:
	#velocity = Vector2(1,1).normalized()

func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(forward * speed)
	if(collision):
		forward = forward.bounce(collision.get_normal())
		speed = clamp(speed + 0.5, 1, max_speed)
		
		if (collision.get_collider().is_in_group("Bricks")):
			collision.get_collider().queue_free()
	## Add the gravity.
	##if not is_on_floor():
		##velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
