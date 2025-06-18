# Mob Flicker Anomaly - Main Logic
# Called from tick.mcfunction if #MobFlickerTwist is enabled and predicate passes.
# This function ensures that only one player is chosen to potentially witness a flicker.

execute as @r at @s run function schizophrenia:twists/mob_flicker/try_find_mob_for_player
