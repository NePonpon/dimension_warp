#> dim_warp:system/add_point/portal
#
# ポータルを設置する。
#

# ゲートのブロックを持ってくる
execute as @e[tag=StartPoint] at @s run setblock ~ ~ ~ structure_block{name:"dim_warp:gate_block",author:"DimensionWarp",posX:0,posY:-1,posZ:0,sizeX:1,sizeY:1,sizeZ:1,mode:"SAVE",ignoreEntities:true}
execute as @e[tag=StartPoint] at @s run setblock ~ ~1 ~ redstone_block

setblock ~ ~ ~ structure_block{name:"dim_warp:gate_block",author:"DimensionWarp",posX:0,posY:-1,posZ:0,sizeX:1,sizeY:1,sizeZ:1,mode:"LOAD",ignoreEntities:true}
setblock ~ ~1 ~ redstone_block

# cloneコマンドで形をつくる

