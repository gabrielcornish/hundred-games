extends Node2D
var hit_spark = preload("res://Main Game/HitSpark.tscn")
var score_label = preload("res://Main Game/Score Label.tscn")
var spawn_ready = true
var released = 0
var switch_ok = false

func _process(delta):
	if released == 5:
		switch_ok = true
		
	if Input.is_action_pressed("click") and switch_ok:
		Score.time = get_node("Control/TimerString").time
		if Score.speed_multiplyer < 1.75:
			Score.speed_multiplyer += 0.1
		get_tree().change_scene("res://Main Game/Game.tscn")
		
	if get_node("Control/TimerString").time <= 0:
		get_tree().change_scene("res://End Scene/End Scene.tscn")
		pass


# Creates hit spark at a collision point		
func create_hit_spark(pos,is_heart):
	
	if spawn_ready:
		spawn_ready = false
		
		# Create Hit Spark
		var hit_spark_instance = hit_spark.instance()
		hit_spark_instance.position = pos
		add_child(hit_spark_instance)
		
		#Play Bump Sound
		if not is_heart:
			get_node("Bump").play()
		else:
			get_node("Heart Bump").play()
		
		#Create Score Label
		if is_heart:
			var score_label_instance = score_label.instance()
			score_label_instance.position = pos
			add_child(score_label_instance)
		else:
			var score_label_instance = score_label.instance()
			score_label_instance.position = pos
			score_label_instance.negative_points()
			add_child(score_label_instance)
		
		#Call Screenshake
		get_node("Camera2D").shake(0.2)
		
		get_node("Spawn Timer").start(0.05)

func _on_Spawn_Timer_timeout():
	spawn_ready = true
