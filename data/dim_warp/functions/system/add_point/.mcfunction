#> dim_warp:system/add_point/
#
# ワープ先にポイントを設置する。
#

forceload add ~ ~
tp @s ~ ~0.5 ~

# ポータル設置(仮)
function dim_warp:system/add_point/portal

# ゲート開通！
# fill ^-1 ^ ^ ^ ^2 ^ end_gateway
# execute as @e[tag=StartPoint] at @s run fill ^-1 ^ ^ ^ ^2 ^ end_gateway
fill ^-1 ^ ^ ^ ^2 ^ purple_stained_glass_pane
execute as @e[tag=StartPoint] at @s run fill ^-1 ^ ^ ^ ^2 ^ purple_stained_glass_pane

# ワープポイントのエンティティを設置する
# summon marker ^-0.5 ^1.5 ^ {Tags:["Warp_Point","NewPoint"]}
execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ^-0.5 ^1.5 ^ {Tags:["Warp_Point","NewPoint","EndPoint"],NoGravity:true}
execute as @e[tag=EndPoint,limit=1,sort=nearest] at @s rotated as @e[tag=Gate_Block_Check] run tp @s ~ ~ ~ ~180 ~
