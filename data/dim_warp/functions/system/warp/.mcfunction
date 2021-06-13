#> dim_warp:system/warp/

scoreboard players operation _ Dimension_Warp = @s Dimension_Warp
execute as @e[tag=Warp_Point] if score _ Dimension_Warp = @s Dimension_Warp run tag @s add GotoPoint
tag @s remove GotoPoint

# tp @a[limit=1,sort=nearest] @e[tag=GotoPoint,limit=1]
execute as @a[limit=1,sort=nearest] at @e[tag=GotoPoint] rotated as @s positioned ^ ^ ^1.5 run tp @s ~ ~ ~ ~ ~

tag @e[tag=GotoPoint] remove GotoPoint
