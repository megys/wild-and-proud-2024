extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%HSlider.value = 100
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	%HSlider.visible = !%HSlider.visible  
	pass # Replace with function body.


func _on_h_slider_drag_ended(value_changed: bool) -> void:
	
	pass # Replace with function body.


func _on_h_slider_value_changed(value: float) -> void:
	# Clamps the percentage to ensure it's between 0 and 100
	value = clamp(value, 0, 100)
	
	var volume_db = linear_to_db(value / 100.0)

	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume_db)


func _on_texture_button_pressed():
	%HSlider.visible = !%HSlider.visible  
	pass # Replace with function body.
