extends CanvasLayer

var pauseMenuEnabled : bool = false
var mouseFree : bool = false 

@export var optionsMenu : CanvasLayer 

func _ready():
	setPauseMenu(false, false)
	
func _process(_delta):
	#this function manage the mouse state
	#when the mouse is captured, you can't see it, and she's disable (not for the movement detection, but for the on screen inputs)
	#when the mouse is visible, you can see it, and she's enable
	if Input.is_action_just_pressed("pauseMenu"):
		if !optionsMenu.optionsMenuEnabled:
			if pauseMenuEnabled: setPauseMenu(false, false)
			else: setPauseMenu(true, true)
		
			#handle mouse mode
			if mouseFree: Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			else: Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			
func setPauseMenu(value : bool, enable : bool):
	#set the pause penu behaviour (visibility, mouse control, ...)
	visible = value
	mouseFree = value
	pauseMenuEnabled = enable
	
	#stop game process when the pause menu is enabled
	if pauseMenuEnabled: Engine.time_scale = 0.0
	else: Engine.time_scale = 1.0
	
func _on_resume_button_pressed():
	#close pause menu
	setPauseMenu(false, false)
	
func _on_options_button_pressed():
	get_tree().reload_current_scene()
	
func _on_quit_button_pressed():
	#close the window, and so close the game
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	
