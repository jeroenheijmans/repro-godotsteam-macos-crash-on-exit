extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var result: Dictionary = Steam.steamInit(false)
	print(result)


func _on_button_button_down():
	print("About to throw a test exception...")
	push_error("Test Error")
	# and for good measure cause an explicit error:
	var divisor = 0
	var result = 10 / divisor
