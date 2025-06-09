extends Node2D

func _ready() -> void:
	$MusicPlayer.play()
   
func _on_a_body_entered(body: Node) -> void:
	if body.name == "Player":  # Pastikan nama player sesuai
		get_tree().change_scene_to_file("res://Ending.tscn")
