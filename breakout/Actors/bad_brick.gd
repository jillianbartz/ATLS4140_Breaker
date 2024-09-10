extends CharacterBody2D
@export var speed = .07

func _physics_process(delta):
	var screen_size = get_viewport_rect().size
	position.x += speed
	
	if(position.x >= screen_size.x - 300):
		speed -= .07
	if(position.x <= 500):
		speed += .07
		
	
