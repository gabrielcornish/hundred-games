extends RichTextLabel
var good_point = true


func _on_Color_Change_Timer_timeout():
	if good_point:
		add_color_override("default_color",Color(1,0.93,0.15,1))
