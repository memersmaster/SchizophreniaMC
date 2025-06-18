# Scheduled function. Expected to run AS the server, or context needs to be managed.
# This function finds the temporary zombie, summons a new cow with stored NBT, and removes the zombie.

# Target the temporary zombie.
# Using 'limit=1' and 'sort=nearest' in case multiple somehow exist, though they shouldn't.
execute as @e[type=minecraft:zombie,tag=temp_flicker_zombie,limit=1,sort=nearest] at @s run {
    # Log current entity for debugging (optional)
    # tellraw @a [{"text":"Zombie transforming back: ", "color":"light_purple"}, {"selector":"@s"}]

    # Summon a new cow at the zombie's current location.
    # Tag it 'restored_cow_flicker' for temporary identification.
    summon minecraft:cow ~ ~ ~ {Tags:["restored_cow_flicker", "schizophrenia_twist_mob"]}

    # Apply stored NBT to the newly summoned cow.
    execute as @e[type=minecraft:cow,tag=restored_cow_flicker,distance=..1,limit=1,sort=nearest] run block {
        data modify entity @s Pos set from storage schizophrenia:flicker_storage cow_swap_data.Pos
        data modify entity @s Rotation set from storage schizophrenia:flicker_storage cow_swap_data.Rotation
        data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

        # Remove the temporary identification tag.
        tag @s remove restored_cow_flicker
        # Add a tag to indicate it was just restored, for a brief period.
        tag @s add was_flicker_restored
    }

    # Schedule the cleanup of the 'was_flicker_restored' tag.
    schedule function schizophrenia:twists/mob_flicker_swap/cleanup_restored_cow_tag 5t replace

    # Kill the temporary zombie.
    kill @s
}

# Optional: Clear the 'is_being_swapped' tag from any entity that might still have it.
# The original cow is gone. The new cow shouldn't have it.
# Zombies shouldn't have it. This might be redundant or could target a wrong entity if not careful.
# tag @e[tag=is_being_swapped] remove is_being_swapped

# Clear the storage (assuming one flicker at a time for now)
# This should ideally be done after confirming the new cow has its data.
# The 'block' for cow NBT modification helps ensure that context.
data remove storage schizophrenia:flicker_storage cow_swap_data.Pos
data remove storage schizophrenia:flicker_storage cow_swap_data.Rotation
data remove storage schizophrenia:flicker_storage cow_swap_data.CustomName
