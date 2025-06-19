tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Entity Swap Anomaly Triggered!", "color":"dark_purple"}]

execute at @r as @e[type=minecraft:cow,distance=..20,tag=!is_being_swapped] at @s run function schizophrenia:twists/mob_flicker_swap/mob_to_zombie