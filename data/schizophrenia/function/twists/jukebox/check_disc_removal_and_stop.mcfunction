# Called every tick, executed AT each marker that is 'custom_sound_active'.
# Marker should have a JukeboxTracked ID.

# Check if the jukebox at this marker's position is empty.
# If RecordItem is empty (meaning disc was ejected).
execute if block ~ ~ ~ minecraft:jukebox{RecordItem:{}} run {
    # Disc has been removed.
    # tellraw @a [{"text":"[Jukebox] Disc removed at marker ID: ", "color":"orange"}, {"score":{"name":"@s","objective":"JukeboxTracked"}, "color":"aqua"}]

    # Store this marker's JukeboxTracked ID to find the associated player.
    scoreboard players operation #TargetID TempVariable = @s JukeboxTracked

    # Stop the custom sound for the associated player.
    execute as @a[tag=jukebox_sound_playing] if score @s JukeboxTracked = #TargetID TempVariable run stopsound @s player schizophrenia:twist.jukebox_glitch

    # Run the cleanup function for this JukeboxTracked ID.
    function schizophrenia:twists/jukebox/cleanup_specific_jukebox
}
