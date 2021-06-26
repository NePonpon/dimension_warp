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

clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-1 ^ replace force
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^ ^ replace force
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^1 ^ replace force
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^2 ^ replace force
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^3 ^ replace force

clone ~ ~-1 ~ ~ ~-1 ~ ^ ^3 ^ replace force
clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^3 ^ replace force

clone ^1 ^-1 ^ ^1 ^3 ^ ^-2 ^-1 ^ replace force
clone ^ ^3 ^ ^-1 ^3 ^ ^-1 ^-1 ^ replace force

# ついでに土台も作る
clone ~ ~-1 ~ ~ ~-1 ~ ^2 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^2 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^2 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^2 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^2 ^-2 ^-2 replace normal

clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^1 ^-2 ^-2 replace normal

clone ~ ~-1 ~ ~ ~-1 ~ ^0 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^0 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^0 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^0 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^0 ^-2 ^-2 replace normal

clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-1 ^-2 ^-2 replace normal

clone ~ ~-1 ~ ~ ~-1 ~ ^-2 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-2 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-2 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-2 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-2 ^-2 ^-2 replace normal

clone ~ ~-1 ~ ~ ~-1 ~ ^-3 ^-2 ^02 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-3 ^-2 ^01 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-3 ^-2 ^00 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-3 ^-2 ^-1 replace normal
clone ~ ~-1 ~ ~ ~-1 ~ ^-3 ^-2 ^-2 replace normal
