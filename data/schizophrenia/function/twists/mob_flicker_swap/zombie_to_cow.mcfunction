# Scheduled function. Expected to run AS the server, or context needs to be managed.
# This function finds the temporary zombie, then calls a function to handle the swap.

# Target the temporary zombie.
# Using 'limit=1' and 'sort=nearest' in case multiple somehow exist, though they shouldn't.
execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,limit=1,sort=nearest] at @s run function schizophrenia:twists/mob_flicker_swap/zombie_to_cow_inner

# Optional: Clear the 'is_being_swapped' tag from any entity that might still have it.
# The original cow is gone. The new cow shouldn't have it.
# Zombies shouldn't have it. This might be redundant or could target a wrong entity if not careful.
# tag @e[tag=is_being_swapped] remove is_being_swapped

# Clear the storage (assuming one flicker at a time for now)
# This should ideally be done after confirming the new cow has its data.
# The call to zombie_to_cow_inner and subsequently apply_cow_data ensures this.
data remove storage schizophrenia:flicker_storage cow_swap_data.Pos
data remove storage schizophrenia:flicker_storage cow_swap_data.Rotation
data remove storage schizophrenia:flicker_storage cow_swap_data.CustomName
