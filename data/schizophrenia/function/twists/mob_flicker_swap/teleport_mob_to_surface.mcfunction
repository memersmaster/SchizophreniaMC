execute as @e[type=minecraft:husk,tag=temp_flicker_zombie] at @s run tp ~ ~300 ~

execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] at @s run tp @s ~ ~-300 ~

scoreboard players add CurrentIteration TempVariable 1
execute unless score CurrentIteration TempVariable matches 5 run schedule function schizophrenia:twists/mob_flicker_swap/teleport_zombie_to_surface 8t replace

schedule function schizophrenia:twists/mob_flicker_swap/reset 25t replace