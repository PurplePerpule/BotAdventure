extends Node2D
var rooms
var currentRoom = null
var inventory = {}
var InstructionSet = load("res://script/InstructionSet.gd")
@export var movement_up_down = 0
@export var movement_left_right = 0
var action

func process_action(action, object = null):
	pass

