#> dim_warp:system/one_second

scoreboard players reset @s Dimension_Warp

# 演出
execute as @e[tag=Warp_Point,distance=..8] at @s anchored feet run particle portal ^ ^ ^ 0.25 0.5 0.25 1 10 normal
execute if entity @e[tag=Warp_Point,distance=..8] run schedule function dim_warp:system/gate_sounds 13s append

advancement revoke @s only dim_warp:one_second
