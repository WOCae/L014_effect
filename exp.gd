extends Sprite2D

const SPEED = 100 #エフェクト速さ
var passTime = 0.0 #時間計測用変数

func _ready() -> void:
	#position = Vector2(100, 100)
	scale =  Vector2(5,5)	#サイズ
	
func _process(delta: float) -> void:
	# 経過時間を足し込む.
	passTime += delta
	frame = int(passTime * SPEED)
	if frame >= 33:
		# アニメーションが終わったら消す.
		queue_free()
