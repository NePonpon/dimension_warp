#> dim_warp:add_point/minecraft/the_nether
#
# ワープゲートのブロックと
# ワープ先のディメンションを指定する。
#

# <例>
# execute if block ~ ~ ~ <ワープゲートのブロック> in <ワープ先のディメンション> run function dim_warp:system/add_point/

# <本番>
execute if block ~ ~ ~ obsidian in minecraft:the_nether run function dim_warp:system/add_point/
