extends LineEdit

const TextParser = preload("res://script/TextParser.gd")
const GameDataProcessor = preload("res://script/GameDataProcessor.gd")
const Game = preload("res://scene/game.gd")

var gameText: RichTextLabel
var game = null
var text_parser = null
var game_data_processor = null

# Called when the node enters the scene tree for the first time.
func _ready():
	gameText = get_parent().get_parent().get_node("GameText")
	text_parser = TextParser.new()
	game_data_processor = GameDataProcessor.new()
	game = Game.new()
	gameText.append_text(game_data_processor.process_action('') + "\n")
	self.grab_focus()

func _on_text_submitted(new_text):
	if (new_text.is_empty()):
		return

	# clear the text of the text area.
	self.set_text('')

	# parse text
	var instruction = text_parser.parse(new_text)

	# send to game data
	var output_text = ''
	output_text += " > " + new_text + "\n\n"
	output_text += game_data_processor.process_action(instruction, text_parser.get_object())
	output_text += game.process_action(instruction, text_parser.get_object())
	output_text += "\n"

	# pass output to the game text area
	gameText.append_text(output_text)
