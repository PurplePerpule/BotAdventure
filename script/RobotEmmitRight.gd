extends Area2D

func _on_area_entered(area):
	
	if area is RightWall:
		Global.RightWalls = true
		print('право стена')




func _on_area_exited(area):
	
	if area is RightWall:
		Global.RightWalls = false
	
