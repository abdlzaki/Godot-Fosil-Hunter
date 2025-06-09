class_name State
extends Node

# Ganti Player jadi Node atau hapus tipenya
# static var player: Player
static var player: Node
static  var state_machine : PlayerStateMachine

func Enter() -> void:
	pass
	
func init() -> void:
	pass
	
func Exit() -> void:
	pass
	
func Process(_delta: float) -> State:
	return null
	
func Physics(_delta: float) -> State:
	return null
	
func HandleInput(_event: InputEvent) -> State:
	return null
