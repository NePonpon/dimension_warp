#> dim_warp:load

scoreboard objectives add Dimension_Warp dummy {"text":"ディメンションワープシステム"}
execute unless score _ Dimension_Warp = _ Dimension_Warp run function dim_warp:system/load_once
