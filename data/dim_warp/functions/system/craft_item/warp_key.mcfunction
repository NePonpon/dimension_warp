#> dim_warp:system/craft_item/warp_key
#
# warp_key アイテムを作成した
#

# 作業台で作ったアイテムを削除
clear @s compass 1

# 本物のアイテムを付与
give @s armor_stand{Enchantments:[{}],display:{Name:'{"text":"☆ワープゲート解放☆","color":"dark_purple","italic":false}'},EntityTag:{Tags:["Warp_Key"]}}

# レシピを再利用できるようにする
recipe take @s dim_warp:warp_key
