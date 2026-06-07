extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func go_level_1 ():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
	
func go_information():
	get_tree().change_scene_to_file("res://scenes/information.tscn")
	
func _on_start_pressed() -> void:
	call_deferred("go_level_1")


func _on_information_pressed() -> void:
	call_deferred("go_information")
