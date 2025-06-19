execute as @e[type=minecraft:husk,tag=temp_flicker_zombie] at @s run tp ~ ~100 ~

execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] at @s run tp @s ~ ~-100 ~

scoreboard players add CurrentIteration TempVariable 1
execute unless score CurrentIteration TempVariable matches 6 run schedule function schizophrenia:twists/mob_flicker_swap/zombie_to_mob 8t replace

schedule function schizophrenia:twists/mob_flicker_swap/reset 30t replace