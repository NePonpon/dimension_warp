#> dim_warp:system/check_type/fork
#
# ゲートの形をチェックする
# 最小のネザーゲートの形のみ成功とする
#

execute if entity @s[tag=!Gate_Block_Check] if block ~ ~ ~01 #dim_warp:gate_blocks rotated 090 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~ ~ ~-1 #dim_warp:gate_blocks rotated -90 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~01 ~ ~ #dim_warp:gate_blocks rotated 000 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~-1 ~ ~ #dim_warp:gate_blocks rotated 180 0 run function dim_warp:system/check_type/block

execute if entity @s[tag=Gate_Block_Check,y_rotation=090] run tag @s add North
execute if entity @s[tag=Gate_Block_Check,y_rotation=-90] run tag @s add South
execute if entity @s[tag=Gate_Block_Check,y_rotation=000] run tag @s add East
execute if entity @s[tag=Gate_Block_Check,y_rotation=-180] run tag @s add West

tag @s remove Gate_Block_Check

execute unless entity @s[tag=!North,tag=!South,tag=!East,tag=!West] run me is Success
