#> dim_warp:system/check_type/break/

## 破壊チェック
tag @s add CheckBreak

execute positioned ^0.5 ^-1.5 ^ if block ^1 ^ ^ #dim_warp:gate_blocks if block ^1 ^1 ^ #dim_warp:gate_blocks if block ^1 ^2 ^ #dim_warp:gate_blocks if block ^ ^3 ^ #dim_warp:gate_blocks if block ^-1 ^3 ^ #dim_warp:gate_blocks if block ^-2 ^2 ^ #dim_warp:gate_blocks if block ^-2 ^1 ^ #dim_warp:gate_blocks if block ^-2 ^ ^ #dim_warp:gate_blocks if block ^-1 ^-1 ^ #dim_warp:gate_blocks if block ^ ^-1 ^ #dim_warp:gate_blocks if block ^ ^ ^ purple_stained_glass_pane if block ^ ^1 ^ purple_stained_glass_pane if block ^ ^2 ^ purple_stained_glass_pane if block ^-1 ^2 ^ purple_stained_glass_pane if block ^-1 ^1 ^ purple_stained_glass_pane if block ^-1 ^ ^ purple_stained_glass_pane run tag @s remove CheckBreak

execute if entity @s[tag=CheckBreak] run function dim_warp:system/check_type/break/target_gate

kill @e[tag=CheckBreak]
