#> dim_warp:system/add_point/start
#
# ワープポイント追加
# (共通)
#

# summon marker ^-0.5 ^1.5 ^ {Tags:["Warp_Point"]}
summon armor_stand ~ ~ ~ {Tags:["Warp_Key","Warp_Point","StartPoint"]}

# ここからは分岐
execute positioned ~ ~-1 ~ run function #dim_warp:add_point

