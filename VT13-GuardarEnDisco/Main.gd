extends Node

func _ready():
	$Label.text = str(Persistence.data["puntaje"])
	
func _on_Button_pressed():
	Persistence.data["puntaje"] += 1
	$Label.text = str(Persistence.data["puntaje"])
	
	Persistence.save_data()