# Executed AS the target passive mob.

# Tag to prevent this mob from being selected again in the same tick by try_find_mob_for_player,
# and to schedule its own cleanup.
tag @s add flicker_processed_this_tick

# Play a particle effect. squid_ink is subtle. 'witch' or 'angry_villager' are more noticeable.
particle minecraft:squid_ink ~ ~0.5 ~ 0.3 0.3 0.3 0.02 25 normal @s

# Schedule the removal of the tag.
# Using 'append' just in case, though it should be unique.
schedule function schizophrenia:twists/mob_flicker/remove_flicker_tag 2t append

# Optional: tellraw @a[distance=..15] {"text":"You see a nearby creature.... shimmer.", "color":"dark_gray"}
