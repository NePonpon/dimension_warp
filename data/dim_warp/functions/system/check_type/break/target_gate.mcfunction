#> dim_warp:system/check_type/break/target_gate

scoreboard players operation _ Dimension_Warp = @s Dimension_Warp

execute as @e[tag=Warp_Point,tag=!CheckBreak] if score @s Dimension_Warp = _ Dimension_Warp run tag @s add CheckBreak

execute as @e[tag=CheckBreak] at @s positioned ^0.5 ^-1.5 ^ run function dim_warp:system/check_type/break/remove
