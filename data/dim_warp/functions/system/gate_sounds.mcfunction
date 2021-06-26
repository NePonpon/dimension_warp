#> dim_warp:system/gate_sounds

execute as @a at @s if entity @e[tag=Warp_Point,distance=..8] positioned as @e[tag=Warp_Point,distance=..8] run playsound block.portal.ambient ambient @s ~ ~ ~ 0.6 1
schedule clear dim_warp:system/gate_sounds
