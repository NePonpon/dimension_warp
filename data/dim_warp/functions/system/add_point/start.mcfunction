#> dim_warp:system/add_point/start
#
# ワープポイント追加
# (共通)
#

forceload add ~ ~

# ワープポイントのエンティティを召喚
# summon marker ^-0.5 ^1.5 ^ {Tags:["Warp_Point","StartPoint","NewPoint"]}
summon armor_stand ~ ~ ~ {Tags:["Warp_Point","StartPoint","NewPoint"],NoGravity:true}
tp @e[tag=StartPoint] ~ ~ ~ ~ ~

# ここからは分岐
execute positioned ~ ~-1 ~ run function #dim_warp:add_point

# GateID付与
execute if entity @e[tag=NewPoint] store result score @e[tag=NewPoint] Dimension_Warp run scoreboard players add $GateID Dimension_Warp 1

# ワープゲートのエンティティ位置調整
execute as @e[tag=StartPoint] at @s run tp ^-0.5 ^1.5 ^

# いろんなものを削除
tag @e[tag=StartPoint] remove StartPoint
tag @e[tag=EndPoint] remove EndPoint
tag @e[tag=NewPoint] remove NewPoint
kill @e[tag=Warp_Key]
