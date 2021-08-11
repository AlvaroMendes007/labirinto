extends Spatial

var novacaixa = preload("res://Scenes/Ganhou.tscn")

func _ready():
	$tema.play()
	randomize()

func _on_HUD_perdeu():
	$HUD.perde()

func _on_HUD_reinicia():
	get_tree().reload_current_scene()

func _on_geracaixa_timeout():
	var caixa = novacaixa.instance()
	add_child(caixa)
	caixa.translation.x = rand_range(-20, 20)
	caixa.translation.y = 1
	caixa.translation.z = rand_range(-20, 20)

func _on_HUD_fimdejogo():
	$Player.fimdejogo = 1
