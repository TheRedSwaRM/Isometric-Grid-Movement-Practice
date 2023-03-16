extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	
	var some_object = preload("res://scenes/character_body_2d.tscn")
	var object_instance = some_object.instantiate()
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		print("yippee!")
		object_instance.set_position(map_to_local(local_to_map(get_global_mouse_position())))
		add_child(object_instance)
