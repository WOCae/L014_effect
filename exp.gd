extends Sprite2D

# 演出速度.
const SPEED = 34*2 # 37パターンで1秒,

# 経過時間.
var _pasttime = 0.0

func _ready() -> void:
	#position = Vector2(100, 100)
	scale =  Vector2(5,5)	#サイズ
	
## 更新.
func _process(delta: float) -> void:
	# 経過時間を足し込む.
	_pasttime += delta
	
	frame = int(_pasttime * SPEED)
	if frame >= 30:
		# アニメーションが終わったら消す.
		queue_free()
