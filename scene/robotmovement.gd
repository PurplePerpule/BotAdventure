extends CharacterBody2D
class_name Player
var InstructionSet = load("res://script/InstructionSet.gd")



func _physics_process(delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_just_pressed("ui_right"):
		input_vector.x += 1000
	if Input.is_action_just_pressed("ui_left"):
		input_vector.x -= 1000
	if Input.is_action_just_pressed("ui_down"):
		input_vector.y += 1000
	if Input.is_action_just_pressed("ui_up"):
		input_vector.y -= 1000

	velocity = input_vector

	move_and_slide()
