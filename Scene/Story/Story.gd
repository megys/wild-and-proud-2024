extends Node2D


@export_file("*.dtl")
var timeline_path : String

@export_file("*.tscn")
var main_menu_filepath : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start(load(timeline_path))

	Dialogic.timeline_ended.connect(_on_time_line_ended)
	
#put whatever in here for when thing done
func _on_time_line_ended()->void:
	print("yo mama")
	get_tree().change_scene_to_file(main_menu_filepath)
	pass
