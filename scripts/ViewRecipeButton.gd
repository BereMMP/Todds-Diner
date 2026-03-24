extends Control

@onready var view_button = $MenuVBox/ViewRecipeButton
@onready var settings_button = $MenuVBox/SettingsButton
@onready var credits_button = $MenuVBox/CreditButton
@onready var exit_button = $MenuVBox/ExitButton
@onready var anim = $AnimatedSprite2D

func _ready():
	view_button.pressed.connect(on_view_button_pressed)
	settings_button.pressed.connect(on_settings_button_pressed)
	credits_button.pressed.connect(on_credits_button_pressed)
	exit_button.pressed.connect(on_exit_button_pressed)

func on_view_button_pressed():
	anim.play("transitionforward")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://scenes/TransitionScreen.tscn")
	
func on_settings_button_pressed():
	pass
	
func on_credits_button_pressed():
	anim.play("transitionforward")
	await anim.animation_finished
	get_tree().change_scene_to_file("res://scenes/Credits.tscn")
	
func on_exit_button_pressed():
	get_tree().quit()
