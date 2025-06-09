extends CanvasLayer


var heart : Array[HeartGUI] = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in $Control/HFlowContainer2.get_children():
		if child is HeartGUI:
			heart.append(child)
			child.visible = false
	pass # Replace with function body.

func update_hp(_hp : int, _max_hp : int) -> void:
	update_max_hp(_max_hp)
	for i in _max_hp:
		update_heart(i, _hp)
		pass
	pass

func update_heart(_index : int, _hp : int) -> void:
	var _value : int = clampi(_hp - _index * 2, 0, 2)
	heart[_index].value = _value
	pass
	
func update_max_hp(_max_hp : int) -> void:
	var _heart_count : int = roundi(_max_hp * 0.5)
	for i in heart.size():
		if i < _heart_count:
			heart[i].visible = true
		else:
			heart[i].visible = false
	pass
