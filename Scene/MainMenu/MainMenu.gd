extends Control


@export_file("*.tscn")
var file_path:String



#func _on_play_button_pressed() -> void:
	#get_tree().change_scene_to_file(file_path)


func _on_credits_button_pressed() -> void:
	$LazyCredits.visible = true
	pass # Replace with function body.


func _on_exit_credits_button_pressed() -> void:
	$LazyCredits.visible = false
	
	pass # Replace with function body.


func _on_start_button_pressed():
	get_tree().change_scene_to_file(file_path)
	
