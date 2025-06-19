execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie] run tp ~ ~100 ~

execute as @e[type=cow,tag=is_being_swapped] at @s run tp @s ~ ~-100 ~
execute as @e[type=cow,tag=is_being_swapped] run tag @s remove is_being_swapped