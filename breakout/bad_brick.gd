extends CharacterBody2D
@export var speed = 200

func _physics_process(delta):
	velocity.x = move_toward(40, 80, 80)
	if()
	move_and_slide()
