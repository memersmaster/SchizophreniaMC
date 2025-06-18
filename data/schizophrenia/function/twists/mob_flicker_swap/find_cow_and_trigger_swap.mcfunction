# Executed AS a randomly selected player, AT their location.
# Tries to find a nearby Cow to initiate the swap sequence.
# It targets one random cow that is not already being swapped.

# The 'is_being_swapped' tag will be added by cow_to_zombie.mcfunction
# and removed implicitly when the original cow is killed and eventually a new one is summoned.
# Or, it could be removed from the zombie if the process is aborted.
execute as @e[type=minecraft:cow,distance=..10,limit=1,sort=random,tag=!is_being_swapped] run function schizophrenia:twists/mob_flicker_swap/cow_to_zombie
