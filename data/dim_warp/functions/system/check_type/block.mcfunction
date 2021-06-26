#> dim_warp:system/check_type/block
#
# ゲートブロックのチェックをする
#

# 向き合わせる
tp @s ~ ~ ~ ~ ~

# ゲートブロックのチェック
execute if block ^1 ^1 ^ #dim_warp:gate_blocks if block ^1 ^2 ^ #dim_warp:gate_blocks if block ^ ^3 ^ #dim_warp:gate_blocks if block ^-1 ^3 ^ #dim_warp:gate_blocks if block ^-2 ^2 ^ #dim_warp:gate_blocks if block ^-2 ^1 ^ #dim_warp:gate_blocks if block ^-2 ^ ^ #dim_warp:gate_blocks if block ^-1 ^-1 ^ #dim_warp:gate_blocks if block ^ ^-1 ^ #dim_warp:gate_blocks run tag @s add Success

# 空白ブロックのチェック
execute if entity @s[tag=Success] if block ^ ^ ^ air if block ^ ^1 ^ air if block ^ ^2 ^ air if block ^-1 ^2 ^ air if block ^-1 ^1 ^ air if block ^-1 ^ ^ air run tag @s add Gate_Block_Check

tag @s[tag=Success] remove Success
