class_name HitBox extends Area2D

signal damaged(hurt_box : HurtBox)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func take_damage(hurt_box : HurtBox)-> void:
	damaged.emit(hurt_box)
