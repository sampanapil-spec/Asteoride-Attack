extends RigidBody2D


func _physics_process(delta: float) -> void:
	var move_force := 1000.0

	if Input.is_action_pressed("right"):
		apply_force(Vector2(move_force, 0.0))
	if Input.is_action_pressed("left"):
		apply_force(Vector2(-move_force, 0.0)) # Note the negative sign for left!
	if Input.is_action_pressed("up"):
		apply_force(Vector2(0.0, -move_force)) # Negative for up
	if Input.is_action_pressed("down"):
		apply_force(Vector2(0.0, move_force))  # Positive for down
