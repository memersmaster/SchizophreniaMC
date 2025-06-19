execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] at @s run tp @s ~ ~100 ~

execute as @e[type=minecraft:husk,tag=temp_flicker_zombie] at @s run tp @s ~ ~-100 ~

schedule function schizophrenia:twists/mob_flicker_swap/idk 8t replace
