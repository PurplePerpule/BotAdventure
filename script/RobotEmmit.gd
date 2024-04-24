extends Area2D
class_name RobotEmmit



func _on_area_entered(area):
	if area is UpWall:
		Global.UpWalls = true
		print('верх стена')



func _on_area_exited(area):
	if area is UpWall:
		Global.UpWalls = false
