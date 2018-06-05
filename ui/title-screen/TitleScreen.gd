extends Control

var scene_path_to_load

func _on_Item_pressed(path):
	$FadeIn.show()
	$FadeIn.fade_in()
	scene_path_to_load = path

func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	get_tree().change_scene(scene_path_to_load)
