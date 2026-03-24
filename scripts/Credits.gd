extends Control

@onready var back_button = $BackButton
@onready var anim = $AnimatedSprite2D

func _ready():
	back_button.pressed.connect(on_back_button_pressed)

func on_back_button_pressed():
	anim.play("transitionforward")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
