extends CharacterBody2D
class_name Player




func _physics_process(delta):
	var input_vector = Vector2.ZERO

	if Global.RobotMoveRight == true:
		input_vector.x += 100
		await get_tree().create_timer(0.1).timeout
		Global.RobotMoveRight = false
	if Global.RobotMoveLeft == true:
		input_vector.x -= 100
		await get_tree().create_timer(0.1).timeout
		Global.RobotMoveLeft = false
	if Global.RobotMoveDown == true:
		input_vector.y += 100
		await get_tree().create_timer(0.1).timeout
		Global.RobotMoveDown = false
	if Global.RobotMoveUp == true:
		input_vector.y -= 100
		await get_tree().create_timer(0.1).timeout
		Global.RobotMoveUp = false

	velocity = input_vector

	move_and_slide()
