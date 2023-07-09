extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var result: Dictionary = Steam.steamInit(false)
	print(result)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
