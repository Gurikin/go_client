extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Area is ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left button was clicked at ", event.position.x-484, ",", event.position.y-64)
