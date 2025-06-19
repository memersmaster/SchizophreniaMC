execute as @e[type=cow,tag=is_being_swapped] run data merge entity @s {NoAI:1b,NoGravity:1b}
execute as @e[type=cow,tag=is_being_swapped] at @s run tp @s ~ ~100 ~

execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie] at @s run tp @s ~ ~-100 ~

schedule function schizophrenia:twists/mob_flicker_swap/idk 4t replace
