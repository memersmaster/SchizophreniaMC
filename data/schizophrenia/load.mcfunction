# Announce reload in chat to operators
tellraw @a[tag=op] [{"text":"[TwistedMC] ", "color":"gold"}, {"text":"Datapack reloaded successfully!", "color":"yellow"}]

# --- Scoreboard Setup ---
# Objective to store the on/off state of each twist. (1 = on, 0 = off)
scoreboard objectives add TwistConfig dummy [{"text":"Twist Toggles"}]
scoreboard objectives add TempVariable dummy [{"text":"TempVariable"}]

# Objective to track when a player uses a jukebox.
# Objective to track footsteps twist state
scoreboard objectives add JukeboxUse minecraft.custom:minecraft.play_record


# --- Default Twist Configurations ---
# Set the default state for each twist. 1 is enabled, 0 is disabled.
# This is where you would add a line for any new twist you create.
scoreboard players set #JukeboxTwist TwistConfig 1
scoreboard players set #FootstepsTwist TwistConfig 1