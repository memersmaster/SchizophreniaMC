execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] at @s run tp @s ~ ~300 ~

execute as @e[type=minecraft:husk,tag=temp_flicker_zombie] at @s run tp @s ~ ~-300 ~

schedule function schizophrenia:twists/mob_flicker_swap/teleport_mob_to_surface 8t replace
