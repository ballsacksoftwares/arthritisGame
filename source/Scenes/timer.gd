extends Label

var timer: float = 0.0  # In seconds
var running: bool = true

func _ready():
	if str(get_tree().current_scene.name) == "level1":
		global_time.timer = 0.0

func _process(delta: float) -> void:
	if running:
		# Increment the timer
		timer += delta
		# Format the time and display it
		self.text = format_time(timer)

# Function to format time as "MM:SS:MS"
func format_time(time: float) -> String:
	@warning_ignore("integer_division")
	var minutes = int(time) / 60
	var seconds = int(time) % 60
	var milliseconds = int((time - int(time)) * 1000)
	return "%01d:%02d.%03d" % [minutes, seconds, milliseconds]
