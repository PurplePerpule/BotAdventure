extends Area2D


func _on_area_entered(area):
	if area is DownWallZone:
		Global.DownWalls = true
		print('низ стена')
	



func _on_area_exited(area):
	if area is DownWallZone:
		Global.DownWalls = false
	
