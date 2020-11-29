extends Spatial

onready var Explosion = load("res://Explosion.tscn")

func Boom():
	Explosion.instance()
	Explosion.is_playing == true
	$Timer.start
	
	
func delete():
	if Explosion.is_playing == false:
		Explosion.queue_free()
		
	
func _on_Timer_timeout():
	Explosion.is_playing == false
	delete()
