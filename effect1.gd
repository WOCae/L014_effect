extends Area2D

## 爆発シーンを読み込む
const EXPLOSION_OBJ = preload("res://exp.tscn")

func _ready() -> void:
	position = Vector2(100, 100)
	scale =  Vector2(5,5)	#サイズ

	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		# マウスの入力があった
		if event.is_pressed():
			
			# 爆発エフェクトを再生.
			var explosion = EXPLOSION_OBJ.instantiate()
			# 同じ座標に移動.
			explosion.position = position
			# ルートノードに爆発オブジェクトを登録する
			get_tree().root.add_child(explosion)

			# オブジェクトを消す
			#queue_free()
