# Announce reload in chat to operators
tellraw @a[tag=op] [{"text":"[TwistedMC] ", "color":"gold"}, {"text":"Datapack reloaded successfully!", "color":"yellow"}]

# --- Scoreboard Setup ---
# Objective to store the on/off state of each twist. (1 = on, 0 = off)
scoreboard objectives add TwistConfig dummy [{"text":"Twist Toggles"}]
scoreboard objectives add TempVariable dummy [{"text":"TempVariable"}]
scoreboard objectives add Steps dummy [{"text":"Steps"}]
scoreboard objectives add BlockDetected dummy [{"text":"BlockDetected?"}]

# --- Default Twist Configurations ---
# Set the default state for each twist. 1 is enabled, 0 is disabled.
# This is where you would add a line for any new twist you create.

scoreboard players set #FootstepsTwist TwistConfig 1
scoreboard players set #RandomNametag TwistConfig 1
scoreboard players set #TimeJumpTwist TwistConfig 1
scoreboard players set #MobFlickerSwapTwist TwistConfig 1
scoreboard players set #ray1 Steps 10
scoreboard players set #ray2 Steps 10
scoreboard players set #ray3 Steps 10
scoreboard players set #ray4 Steps 10
scoreboard players set #ray5 Steps 10
scoreboard players set #ray6 Steps 10
scoreboard players set #ray7 Steps 10
scoreboard players set #ray8 Steps 10
scoreboard players set #ray9 Steps 10
scoreboard players set #MinSteps Steps 0

