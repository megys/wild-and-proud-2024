extends Node


func _ready() -> void:
	$thing1.modulate = Color(1,1,1,0)
	$thing2.modulate = Color(1,1,1,0)


func show_potion(path1:String,path2:String):
	%Picture1.texture = load(path1)
	%Picture2.texture = load(path2)
	var myTween:Tween = get_tree().create_tween()
	myTween.set_parallel()
	myTween.tween_property($thing1,"modulate",Color(1,1,1,1),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)
	myTween.tween_property($thing2,"modulate",Color(1,1,1,1),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)
	


func clear_potion():
	var myTween:Tween = get_tree().create_tween()
	myTween.set_parallel()
	
	myTween.tween_property($thing1,"modulate",Color(1,1,1,0),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)
	myTween.tween_property($thing2,"modulate",Color(1,1,1,0),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)


func set_titles(text1: String, text2 : String):
	%Title1.text = text1
	%Title2.text = text2
	pass

func set_descriptions(text1: String, text2 : String):
	%Description1.text = text1
	%Description2.text = text2
	pass
