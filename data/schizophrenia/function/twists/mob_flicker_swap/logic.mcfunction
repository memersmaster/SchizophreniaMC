tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Entity Swap Anomaly Triggered!", "color":"dark_purple"}]

execute at @s as @e[type=#schizophrenia:passive_mobs,distance=..40,limit=30,tag=!is_being_swapped] at @s run function schizophrenia:twists/mob_flicker_swap/summon_zombie