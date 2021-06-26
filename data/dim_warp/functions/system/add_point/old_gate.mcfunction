#> dim_warp:system/add_point/old_gate

scoreboard players operation @e[tag=NewPoint] Dimension_Warp = @s Dimension_Warp
tag @e[tag=Gate_Block_Check] remove Gate_Block_Check
kill @e[tag=Gate_Block_Check]

say 先客がいた！
