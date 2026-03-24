extends Control

@onready var anim = $AnimatedSprite2D

func _ready():
	anim.play("loadingAnimation")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://scenes/RecipeDetails.tscn")
