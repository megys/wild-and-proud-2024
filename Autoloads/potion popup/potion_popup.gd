extends Control


func show_potion(path1:String,path2:String):
	$MarginContainer/TextureRect.texture = load(path1)
	$MarginContainer2/TextureRect2.texture = load(path2)
	var myTween:Tween = get_tree().create_tween()
	
	myTween.tween_property(self,"modulate",Color(1,1,1,1),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)


func clear_potion():
	var myTween:Tween = get_tree().create_tween()
	myTween.tween_property(self,"modulate",Color(1,1,1,0),1.0).set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CIRC)



