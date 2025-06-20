tellraw @a[tag=op] [{"text":"[TwistedMC] ", "color":"gold"}, {"text":"Datapack reloaded successfully!", "color":"yellow"}]

# --- Scoreboard Setup ---
scoreboard objectives add TwistConfig dummy [{"text":"Twist Toggles"}]
scoreboard objectives add TempVariable dummy [{"text":"TempVariable"}]
scoreboard objectives add Steps dummy [{"text":"Steps"}]
scoreboard objectives add BlockDetected dummy [{"text":"BlockDetected"}]
scoreboard objectives add Chance dummy [{"text":"BlockDetected"}]
scoreboard objectives add Sanity dummy [{"text":"Sanity"}]


# --- Default Twist Configurations ---
# Set the default state for each twist. 1 is enabled, 0 is disabled.

scoreboard players set #FootstepsTwist TwistConfig 1
scoreboard players set #RandomNametag TwistConfig 1
scoreboard players set #TimeJumpTwist TwistConfig 1
scoreboard players set #MobFlickerSwapTwist TwistConfig 1
scoreboard players set #RandomSounds TwistConfig 1



# --- Default Chance Values ---
# Every increase in 1000 increases the chance for the event to happen by 1% every tick
scoreboard players set #FootstepsTwist Chance 1
scoreboard players set #RandomNametag Chance 1
scoreboard players set #TimeJumpTwist Chance 1
scoreboard players set #MobFlickerSwapTwist Chance 1
scoreboard players set #RandomSounds Chance 1


schedule function schizophrenia:sanity 1200t replace