# Called AS the player whose PlayerJukeboxDelay reached 0.
# Player should have 'active_jukebox_user' tag and their JukeboxTracked ID set.

# Play the custom sound for the player.
# Ensure the sound event 'schizophrenia:twist.jukebox_glitch' is defined in your resource pack.
playsound schizophrenia:twist.jukebox_glitch master @s ~ ~ ~ 1.0 1.0

# Tag the player as currently having the sound playing.
tag @s add jukebox_sound_playing

# The 'active_jukebox_user' tag is removed by do_player_cleanup when the sequence ends.
# However, PlayerJukeboxDelay score being 0 and no longer decrementing effectively means this part of the sequence is done.
# We reset PlayerJukeboxDelay here to ensure it doesn't re-trigger, though do_player_cleanup also does it.
scoreboard players reset @s PlayerJukeboxDelay

# Find the associated marker and tag it as 'custom_sound_active'.
# Store player's JukeboxTracked ID into #TargetID TempVariable to select the correct marker.
scoreboard players operation #TargetID TempVariable = @s JukeboxTracked
execute as @e[type=minecraft:marker,tag=jukebox_marker] if score @s JukeboxTracked = #TargetID TempVariable run tag @s add custom_sound_active

# Debug: tellraw @s [{"text":"[Jukebox] Playing sound for you. Your ID: ", "color":"green"}, {"score":{"name":"@s","objective":"JukeboxTracked"}, "color":"aqua"}]
# Debug: execute as @e[type=marker,tag=jukebox_marker,tag=custom_sound_active] if score @s JukeboxTracked = #TargetID TempVariable run tellraw @a [{"text":"[Jukebox] Marker ", "color":"blue"}, {"score":{"name":"@s","objective":"JukeboxTracked"}, "color":"blue"}, {"text":" is now custom_sound_active.", "color":"blue"}]
