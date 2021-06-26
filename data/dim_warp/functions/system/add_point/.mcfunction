#> dim_warp:system/add_point/
#
# ワープ先にポイントを設置する。
#

forceload add ~ ~
tp @s ~ ~1 ~

# 同一ディメンションチェック
execute if entity @e[tag=StartPoint,distance=..5] in minecraft:overworld run function dim_warp:system/add_point/overworld

# 付近に重複するポータルが無いかチェック
execute if entity @e[tag=Warp_Point,distance=..32] as @e[tag=Warp_Point,distance=..32,limit=1,sort=nearest] at @s run function dim_warp:system/add_point/old_gate

# execute at @s run function dim_warp:system/add_point/new_gate
execute if entity @s[tag=Gate_Block_Check,tag=OverWorld] in minecraft:overworld run function dim_warp:system/add_point/new_gate
execute if entity @s[tag=Gate_Block_Check,tag=!OverWorld] run function dim_warp:system/add_point/new_gate
