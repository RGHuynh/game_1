extends StaticBody2D

const SPEED:int = 500
var window_height
var player_heigth

# Called when the node enters the scene tree for the first time.
func _ready():
	window_height = get_viewport_rect().size
	player_heigth = $ColorRect.size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		position.y += 1 * SPEED * delta
	if Input.is_action_pressed("ui_up"):
		position.y -= 1 * SPEED * delta
	
	print(window_height.y - player_heigth.y/2)
	position.y = clamp(position.y, Vector2.ZERO.y, window_height.y - player_heigth.y)



	
	
