extends Node

@onready var anim = $AnimatedSprite2D
@onready var menu = $MenuBackground

@onready var title_label = $MenuBackground/Label
@onready var breakfast_btn = $MenuBackground/FoodChoices/BreakfastButton
@onready var lunch_btn = $MenuBackground/FoodChoices/LunchButton
@onready var dinner_btn = $MenuBackground/FoodChoices/DinnerButton
@onready var pastry_btn = $MenuBackground/FoodChoices/PastryButton

@onready var recipe_menu = $RecipeMenuBG
@onready var recipe_list = $RecipeMenuBG/RecipeListPanel
@onready var recipe_detail = $RecipeMenuBG/RecipeDetailPanel
@onready var add_recipe = $RecipeMenuBG/AddRecipePanel
@onready var card = $RecipeMenuBG/RecipeListPanel/ScrollContainer/VBoxContainer/RecipeCard


const DEFAULT_TEXT = "What Kind Of Recipes Are You Searching For?"

func _ready():
	recipe_menu.visible = false
	recipe_list.visible = false
	recipe_detail.visible = false
	add_recipe.visible = false
	
	menu.position.y = 350
	recipe_menu.position.y = 350
	anim.play("transitionBack")

	# Intro bounce-in
	var intro_tween = get_tree().create_tween()
	intro_tween.tween_property(menu, "position:y", 20, 1.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

	title_label.text = DEFAULT_TEXT
	
	await anim.animation_finished
	
	# Hover text handlers
	breakfast_btn.connect("mouse_entered", Callable(self, "_on_breakfast_hover"))
	breakfast_btn.connect("mouse_exited", Callable(self, "_on_reset_text"))
	lunch_btn.connect("mouse_entered", Callable(self, "_on_lunch_hover"))
	lunch_btn.connect("mouse_exited", Callable(self, "_on_reset_text"))
	dinner_btn.connect("mouse_entered", Callable(self, "_on_dinner_hover"))
	dinner_btn.connect("mouse_exited", Callable(self, "_on_reset_text"))
	pastry_btn.connect("mouse_entered", Callable(self, "_on_pastry_hover"))
	pastry_btn.connect("mouse_exited", Callable(self, "_on_reset_text"))

	# Click actions
	breakfast_btn.connect("pressed", Callable(self, "_on_breakfast_pressed"))
	# Add other buttons as needed


func _on_breakfast_hover():
	title_label.text = "Morning Breakfast"

func _on_lunch_hover():
	title_label.text = "Quick Bites"

func _on_dinner_hover():
	title_label.text = "Hearty Meals"

func _on_pastry_hover():
	title_label.text = "Sweet Treats"

func _on_reset_text():
	title_label.text = DEFAULT_TEXT
	

func _on_breakfast_pressed():
	var tween_out = get_tree().create_tween()
	tween_out.tween_property(menu, "position:y", menu.position.y + 800, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
	await tween_out.finished
	
	recipe_menu.visible = true
	recipe_list.visible = true
	
	# Recipe List bounce-in
	var list_tween = get_tree().create_tween()
	list_tween.tween_property(recipe_menu, "position:y", 20, 1.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	# Recipes for breakfast load in as a list of recipe cards
	
func _on_lunch_pressed():
	var tween_out = get_tree().create_tween()
	tween_out.tween_property(menu, "position:y", menu.position.y + 800, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
	await tween_out.finished
		
	recipe_menu.visible = true
	recipe_list.visible = true
	
	# Recipe List bounce-in
	var list_tween = get_tree().create_tween()
	list_tween.tween_property(recipe_menu, "position:y", 20, 1.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	# Recipes for lunch load in as a list of recipe cards
	
	
func _on_dinner_pressed():
	var tween_out = get_tree().create_tween()
	tween_out.tween_property(menu, "position:y", menu.position.y + 800, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
	await tween_out.finished
		
	recipe_menu.visible = true
	recipe_list.visible = true
	
	# Recipe List bounce-in
	var list_tween = get_tree().create_tween()
	list_tween.tween_property(recipe_menu, "position:y", 20, 1.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	# Recipes for dinner load in as a list of recipe cards
	
func _on_pastry_pressed():
	var tween_out = get_tree().create_tween()
	tween_out.tween_property(menu, "position:y", menu.position.y + 800, 1).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN)
	
	await tween_out.finished
		
	recipe_menu.visible = true
	recipe_list.visible = true
	
	# Recipe List bounce-in
	var list_tween = get_tree().create_tween()
	list_tween.tween_property(recipe_menu, "position:y", 20, 1.2).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	
	# Recipes for pastry load in as a list of recipe cards

func _populate_button_list(data):
	for item in data:
		
		var buttonLabel_Name := 
		
	
