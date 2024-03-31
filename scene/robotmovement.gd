extends CharacterBody2D

var direct = 10


func _physics_process(delta):
	if Game.movement_up_down == -1:
		velocity.y += delta * direct
	if Game.movement_up_down == 1:
		velocity.y -= delta * direct


	move_and_slide()
