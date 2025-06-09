extends Node2D  # atau Control, tergantung root node kamu



func _ready():
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene_to_file("res://Level1.tscn")  # Ganti ke scene utama game kamu
