# This function is executed AS the temporary zombie, AT the temporary zombie.
# It summons a new cow, prepares to apply NBT, schedules cleanup, and kills the zombie.

# Log current entity for debugging (optional)
# tellraw @a [{"text":"Zombie transforming back (inner function): ", "color":"light_purple"}, {"selector":"@s"}]

# Summon a new cow at the zombie's current location.
# Tag it 'restored_cow_flicker' for temporary identification.
summon minecraft:cow ~ ~ ~ {Tags:["restored_cow_flicker", "schizophrenia_twist_mob"]}

# Apply stored NBT to the newly summoned cow.
# This will call another function to handle the data modification.
# The context for the next execute command is as the zombie, at the zombie.
# We need to target the cow relative to the zombie.
execute as @e[type=minecraft:cow,tag=restored_cow_flicker,distance=..1,limit=1,sort=nearest] at @s run function schizophrenia:twists/mob_flicker_swap/apply_cow_data

# Schedule the cleanup of the 'was_flicker_restored' tag.
# This needs to be run by the server, so we use 'execute positioned as @s run schedule...'
# if we want it relative to the zombie, or just 'schedule...' if absolute/server context is fine.
# Given the original was outside any execute, server context is implied.
schedule function schizophrenia:twists/mob_flicker_swap/cleanup_restored_cow_tag 5t replace

# Kill the temporary zombie (which is @s in this context).
kill @s
