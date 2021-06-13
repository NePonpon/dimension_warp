#> dim_warp:system/warp/gate_in
#
# ワープさせる
#

scoreboard players add @s Dimension_Warp 1

execute if entity @s[scores={Dimension_Warp=1}] as @e[distance=..5,sort=nearest,limit=1,tag=Warp_Point] at @s run function dim_warp:system/warp/

advancement revoke @s only dim_warp:warp_gate_in
