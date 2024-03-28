class_name TextParser

var InstructionSet = load("res://script/InstructionSet.gd")

var object = null

# Parse a given input string into an instruction.
func parse(text):
	match text:
		'Down':
			return InstructionSet.DOWN
		'down':
			return InstructionSet.DOWN
		'Up':
			return InstructionSet.UP
		'up':
			return InstructionSet.UP
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