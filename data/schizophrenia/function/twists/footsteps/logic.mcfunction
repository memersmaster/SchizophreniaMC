# Select a random player
# Loop through all players, and for each, try to execute based on random chance
execute as @a at @s if predicate schizophrenia:random_chance_5_percent run function schizophrenia:twists/footsteps/play_sound_randomly
