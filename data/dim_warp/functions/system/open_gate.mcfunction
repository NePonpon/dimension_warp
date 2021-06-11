#> dim_warp:system/open_gate
#
# ゲート解放！
#
# @within advancement dim_warp:open_gate

# アマスタ設置音を消す
stopsound @a * entity.armor_stand.place

# 設置された場所がゲートブロックの上かどうかチェック
# ついでに、ゲートの形があっているかどうかも見る
execute as @e[tag=Warp_Key] at @s if block ~ ~-1 ~ #dim_warp:gate_blocks run function dim_warp:system/check_type/fork

# ワープ先にアマスタを設置する
execute as @e[tag=!North,tag=!South,tag=!East,tag=!West] at @s run function dim_warp:system/add_point/start

# アマスタ削除(どうなるかわからない)
# kill @e[tag=Warp_Key]
# 進捗解除
advancement revoke @s only dim_warp:open_gate
