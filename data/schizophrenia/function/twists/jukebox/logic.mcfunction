# Main logic for jukebox twist - called from tick.mcfunction if JukeboxTwist is enabled.
# This function is responsible for initiating the sequence when a player uses a jukebox.
execute as @a[scores={JukeboxUse=1..}] run function schizophrenia:twists/jukebox/init_delay
