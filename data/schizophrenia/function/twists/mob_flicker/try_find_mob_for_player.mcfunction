# Executed AS a randomly selected player, AT their location.
# Tries to find a nearby passive mob to apply the flicker effect to.
# The order determines a slight priority if multiple valid mob types are equidistant and untagged.
# Only one mob should be affected per trigger of the main logic.

# Adding 'tag=!flicker_happened_this_trigger' to ensure only one of these lines runs even if a mob matches multiple types (not possible for cow/sheep/pig/chicken)
# or if we wanted to pick just one type of mob from a list.
# The apply_effect_and_tag function will add 'flicker_processed_this_tick' to the mob.

execute as @e[type=minecraft:cow,distance=..10,limit=1,sort=random,tag=!flicker_processed_this_tick] run function schizophrenia:twists/mob_flicker/apply_effect_and_tag
execute as @e[type=minecraft:sheep,distance=..10,limit=1,sort=random,tag=!flicker_processed_this_tick] run function schizophrenia:twists/mob_flicker/apply_effect_and_tag
execute as @e[type=minecraft:pig,distance=..10,limit=1,sort=random,tag=!flicker_processed_this_tick] run function schizophrenia:twists/mob_flicker/apply_effect_and_tag
execute as @e[type=minecraft:chicken,distance=..10,limit=1,sort=random,tag=!flicker_processed_this_tick] run function schizophrenia:twists/mob_flicker/apply_effect_and_tag
# Add other passive mobs here if desired (e.g., rabbit, horse)
