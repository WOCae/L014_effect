extends Area2D

## 爆発シーンを読み込む
const ExpObj = preload("res://exp.tscn")

func _ready() -> void:
	position = Vector2(100, 100)
	scale =  Vector2(5,5)	#サイズ

	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			
			var explosion = ExpObj.instantiate()
			#位置移動
			explosion.position = position
			# ルートノードに爆発オブジェクトを登録する
			get_tree().root.add_child(explosion)

			#削除
			#queue_free()
