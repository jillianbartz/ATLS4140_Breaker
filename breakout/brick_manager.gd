extends Node2D

@export var brick_scene: Resource

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var width = get_viewport_rect().size.x
	#var height = get_viewport_rect().size.y
	#for i in 5:
		#for j in 3:
			#var new_brick = brick_scene.instantiate()
			#new_brick.position = Vector2(width/5 * i, width/5 * j)
			#add_child(new_brick)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
