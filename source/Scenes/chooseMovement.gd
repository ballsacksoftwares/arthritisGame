extends OptionButton

var descriptions = {
	0 : """default:
classical experience
HIGHLY recommended to beat the game first before using any other movement set
- no modifiers""",
	1 : """light:
you inhaled some helium (dont actually do that)
+ you are lighter
- max back pain 50%""",
	2 : """heavy:
your spinal coord is tungsten
- you are heavier""",
	3 : """glass:
your spinal coord is so weak it breaks when you tip over
- max back pain 25%""",
	4 : """cured:
you got your back pain fixed! go crazy, have fun.
+ back pain removed""",
	5 : """handicap:
you can only move using your skeleton (aka your grapple)
- self explanatory""",
}

func _ready():
	self.selected = global_vals.movementset
	$Label.text = descriptions[global_vals.movementset]

func _on_item_selected(index):
	global_vals.movementset = index
	$Label.text = descriptions[index]
