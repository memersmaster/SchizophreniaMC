# Executed AT the marker, AS the marker, when a disc is detected as ejected
# by check_disc_removal_and_stop.mcfunction.

# Store this marker's JukeboxTracked ID to find the associated player and for cleanup.
scoreboard players operation #TargetID TempVariable = @s JukeboxTracked

# Stop the custom sound 'schizophrenia:twist.jukebox_glitch' for the associated player.
execute as @a[tag=jukebox_sound_playing] if score @s JukeboxTracked = #TargetID TempVariable run stopsound @s player schizophrenia:twist.jukebox_glitch

# Run the cleanup function for this JukeboxTracked ID.
# cleanup_specific_jukebox expects #TargetID TempVariable to be set with the ID.
function schizophrenia:twists/jukebox/cleanup_specific_jukebox
