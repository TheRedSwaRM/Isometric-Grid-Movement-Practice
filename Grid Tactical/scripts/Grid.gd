extends TileMap

enum {EMPTY, PLAYER, OBSTACLE, COLLECTIBLE}

var tile_size = get_quadrant_size()
var half_tile_size = tile_size / 2
var grid_size = Vector2(cell_quadrant_size, cell_quadrant_size)

var grid = []
var char = preload("res://scenes/character_body_2d.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	# 1. create a grid array
	# 2. create obstacles (for testing)
	pass # Replace with function body.
