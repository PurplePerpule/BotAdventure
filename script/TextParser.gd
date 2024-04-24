class_name TextParser

var InstructionSet = load("res://script/InstructionSet.gd")

var object = null

# Parse a given input string into an instruction.
func parse(text):
	match text:
		'Move.Down':
			return InstructionSet.MOVE_DOWN
		'Move.Up':
			return InstructionSet.MOVE_UP
		'Move.Right':
			return InstructionSet.MOVE_RIGHT
		'Move.Left':
			return InstructionSet.MOVE_LEFT
		'settings':
			return InstructionSet.SETTINGS
		'start':
			return InstructionSet.START
		'Start':
			return InstructionSet.START
		'Down':
			return InstructionSet.DOWN
		'down':
			return InstructionSet.DOWN
		'Next':
			return InstructionSet.NEXT
		'next':
			return InstructionSet.NEXT
		'Left':
			return InstructionSet.LEFT
		'left':
			return InstructionSet.LEFT
		'Right':
			return InstructionSet.RIGHT
		'right':
			return InstructionSet.RIGHT

		'look':
			return InstructionSet.LOOK
		'help':
			return InstructionSet.HELP
		'Help':
			return InstructionSet.HELP
		'reset':
			return InstructionSet.RESET
		'quit':
			return InstructionSet.QUIT
		'exit':
			return InstructionSet.QUIT
		'fanshi лучший?':
			return InstructionSet.FANSHI
			
	
			
	if text.begins_with('get '):
		var regex = RegEx.new()
		regex.compile("get\\s(?<object>.*(\\s.*)?)")
		var results = regex.search(text)
		object = results.get_string('object')
		return InstructionSet.GET

	if text.begins_with('open '):
		var regex = RegEx.new()
		regex.compile("open\\s(?<object>.*(\\s.*)?)")
		var results = regex.search(text)
		object = results.get_string('object')
		return InstructionSet.OPEN

	if text.begins_with('close '):
		var regex = RegEx.new()
		regex.compile("close\\s(?<object>.*(\\s.*)?)")
		var results = regex.search(text)
		object = results.get_string('object')
		return InstructionSet.CLOSE

	return InstructionSet.NOT_FOUND

func get_object():
	return object
