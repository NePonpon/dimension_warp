#> dim_warp:system/check_type/fork
#
# ゲートの形をチェックする
# 最小のネザーゲートの形のみ成功とする
#

execute if entity @s[tag=!Gate_Block_Check] if block ~ ~ ~01 #dim_warp:gate_blocks rotated 090 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~ ~ ~-1 #dim_warp:gate_blocks rotated -90 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~01 ~ ~ #dim_warp:gate_blocks rotated 000 0 run function dim_warp:system/check_type/block
execute if entity @s[tag=!Gate_Block_Check] if block ~-1 ~ ~ #dim_warp:gate_blocks rotated 180 0 run function dim_warp:system/check_type/block

tellraw @a {"entity":"@s","nbt":"Rotation"}
