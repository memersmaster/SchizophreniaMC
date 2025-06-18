tellraw @a[tag=op] [{"text":"[TwistedMC Debug] PlaySound Anomaly Triggered!", "color":"dark_purple"}]

execute if predicate schizophrenia:random_chance_0.01_percent run execute as @r at @s run function schizophrenia:twists/footsteps/play_sound_randomly
