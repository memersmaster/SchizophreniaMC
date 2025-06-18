# Called to clean up a specific jukebox interaction.
# Expects #TargetID TempVariable to be set with the JukeboxTracked ID of the interaction to clean up.

# Debug: tellraw @a [{"text":"[Jukebox] Cleanup for ID: ", "color":"red"}, {"score":{"name":"#TargetID","objective":"TempVariable"}, "color":"red"}]

# Clean up player state for the associated player
execute as @a if score @s JukeboxTracked = #TargetID TempVariable run function schizophrenia:twists/jukebox/do_player_cleanup

# Remove the marker entity associated with this JukeboxTracked ID
execute as @e[type=minecraft:marker,tag=jukebox_marker] if score @s JukeboxTracked = #TargetID TempVariable run kill @s
