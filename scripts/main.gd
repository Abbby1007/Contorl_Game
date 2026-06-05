extends Node2D

@onready var robot: CharacterBody2D = $Robot
#var roVelocity = $Robot.Vector2.ZERO

var move_direction: Vector2 = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var move = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if move:
		robot.velocity = Vector2.LEFT * 400
	
	else:
		robot.velocity = Vector2.ZERO
	robot.move_and_slide()


#LEFT CONTROLS ----------------------
func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Ttes")
	if body.name == "Player":
		move = true
		

func _on_area_2d_body_exited(body: Node2D) -> void:
		if body.name == "Player":
			move = false
#-------------------------

#RIGHT CONTROLS ----------------------------



#UP CONTROLS-----------------------


#DOWN CONTROLS
