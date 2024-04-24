extends Area2D


func _on_area_entered(area):

	if area is LeftWall:
		Global.LeftWalls = true
		print('лево стена')
	

func _on_area_exited(area):
	
	if area is LeftWall:
		Global.LeftWalls = false
