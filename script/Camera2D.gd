extends Camera2D

var target_position = Vector2() # Целевая позиция камеры
var move_speed = 1000 # Скорость перемещения камеры

func _process(delta):
	# Вычисляем направление к целевой позиции
	var direction = 5
	# Перемещаем камеру в направлении цели с учетом скорости и времени
	if Input.is_action_pressed('ui_right'):
		$".".position.x += direction * move_speed * delta
	else:
		$".".position.x = 440
