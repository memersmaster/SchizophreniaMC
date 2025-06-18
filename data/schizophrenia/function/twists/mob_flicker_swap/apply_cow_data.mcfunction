# This function is executed AS the new cow, AT the new cow.
# It applies the stored NBT data to the cow (@s).

# Apply Pos, Rotation, and CustomName from storage.
data modify entity @s Pos set from storage schizophrenia:flicker_storage cow_swap_data.Pos
data modify entity @s Rotation set from storage schizophrenia:flicker_storage cow_swap_data.Rotation
data modify entity @s CustomName set from storage schizophrenia:flicker_storage cow_swap_data.CustomName

# Remove the temporary identification tag.
tag @s remove restored_cow_flicker

# Add a tag to indicate it was just restored, for a brief period.
tag @s add was_flicker_restored
