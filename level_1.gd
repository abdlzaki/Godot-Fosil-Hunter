extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MusicPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name == "Player":  # Pastikan nama player sesuai
		get_tree().change_scene_to_file("res://level2.tscn")
