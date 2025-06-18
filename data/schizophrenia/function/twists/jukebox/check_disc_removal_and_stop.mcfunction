# Called every tick, executed AT each marker that is 'custom_sound_active'.
# Marker should have a JukeboxTracked ID.
# Checks if the disc has been removed and if so, calls handle_disc_ejected.

execute if block ~ ~ ~ minecraft:jukebox{RecordItem:{}} run function schizophrenia:twists/jukebox/handle_disc_ejected
