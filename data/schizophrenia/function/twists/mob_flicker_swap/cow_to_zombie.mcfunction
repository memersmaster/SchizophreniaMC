# Executed AS the target Cow.
# This function stores the cow's essential NBT, summons a zombie in its place,
# kills the original cow, and schedules the zombie's transformation back into a cow.

# Tag to prevent this cow (and the subsequent zombie/new cow) from being re-targeted immediately.
tag @s add is_being_swapped

# Store NBT data to a namespaced storage. Using 'flicker_storage' as the namespace.
# Path within storage: flicker_storage.cow_swap_data
data modify storage schizophrenia:flicker_storage cow_swap_data.Pos set from entity @s Pos
data modify storage schizophrenia:flicker_storage cow_swap_data.Rotation set from entity @s Rotation
data modify storage schizophrenia:flicker_storage cow_swap_data.CustomName set from entity @s CustomName
# Storing Health is tricky as it's an attribute. For now, new zombie/cow will have default health.
# Storing the world/dimension is also complex; assuming same dimension for simplicity.

# Summon the temporary zombie.
# It's tagged 'temp_flicker_zombie' to identify it for the next step.
# It will inherit the cow's exact position and rotation upon summon.
summon minecraft:zombie ~ ~ ~ {Tags:["temp_flicker_zombie", "schizophrenia_twist_mob"]}

# Apply stored NBT to the newly summoned zombie.
# This ensures it has the same CustomName if one existed. Pos/Rotation are from summon location.
execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,distance=..1,limit=1,sort=nearest] run data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName
# Note: Setting Pos/Rotation again via data modify after summon is redundant if summoned at ~ ~ ~ of the cow,
# but could be used if finer control or a different summon location was needed.

# Kill the original cow.
kill @s

# Schedule the zombie to transform back into a cow.
# The zombie should exist for only 1 game tick (flicker effect).
# So, schedule the restoration for 2 ticks from now to allow 1 full tick of zombie visibility.
schedule function schizophrenia:twists/mob_flicker_swap/zombie_to_cow 2t replace
