#> dim_warp:system/craft_item/
#
# アイテム作成
#
# @within advancement dim_warp:craft_item

execute if entity @s[advancements={dim_warp:craft_item={warp_key=true}}] run function dim_warp:system/craft_item/warp_key


# 進捗削除
advancement revoke @s only dim_warp:craft_item
