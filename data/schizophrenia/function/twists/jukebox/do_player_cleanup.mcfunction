# Called AS the player who needs their jukebox-related states cleared.
tag @s remove active_jukebox_user
tag @s remove jukebox_sound_playing
scoreboard players reset @s PlayerJukeboxDelay
scoreboard players reset @s JukeboxTracked
# tellraw @s [{"text":"[Jukebox] Your state has been cleared.", "color":"gray"}]
