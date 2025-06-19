scoreboard players set CurrentIteration TempVariable 0
execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] run data remove entity @s NoAI
execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] run data remove entity @s NoGravity
execute as @e[type=husk,tag=temp_flicker_zombie] at @s run tp 0.0 -300.0 0.0
execute as @e[type=#schizophrenia:passive_mobs,tag=is_being_swapped] run tag @s remove is_being_swapped