class_name CoollectableComponent
extends Area2D

@export var collectable_name: String

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		InventoryManager.add_collectable(collectable_name)
		print("Collected")
		get_parent().queue_free()
