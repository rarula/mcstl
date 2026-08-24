# mcstl

標準的なデータ構造を提供するデータパック

## 対応バージョン
- 26.2

## 現在実装済みのもの
- 優先度付きキュー

### 優先度付きキュー
最大ヒープ方式の優先度付きキュー。 `weight` の大きい要素から順に取り出されます。

### 使用例
```mcfunction
# 優先度付きキューを作成し、そのキューのIDを指定して操作対象にする
function mcstd:priority_queue/new
data modify storage mcstd:param id set from storage mcstd:returns id

# 要素を追加する
data modify storage mcstd:param value set value {weight:5, value:"iron"}
function mcstd:priority_queue/push

data modify storage mcstd:param value set value {weight:20, value:"diamond"}
function mcstd:priority_queue/push

# 要素を取得して削除する
# "diamond" -> "iron" の順に取得される
function mcstd:priority_queue/pop_top
tellraw @a {"storage":"mcstd:returns", "nbt":"value"}

function mcstd:priority_queue/pop_top
tellraw @a {"storage":"mcstd:returns", "nbt":"value"}
```

## ライセンス
[CC0-1.0](LICENSE)
