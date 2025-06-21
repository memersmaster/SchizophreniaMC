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

execute unless score #FootstepsTwist TwistConfig matches 0 run scoreboard players set #FootstepsTwist TwistConfig 1
execute unless score #RandomNametag TwistConfig matches 0 run scoreboard players set #RandomNametag TwistConfig 1
execute unless score #TimeJumpTwist TwistConfig matches 0 run scoreboard players set #TimeJumpTwist TwistConfig 1
execute unless score #MobFlickerSwapTwist TwistConfig matches 0 run scoreboard players set #MobFlickerSwapTwist TwistConfig 1
execute unless score #RandomSounds TwistConfig matches 0 run scoreboard players set #RandomSounds TwistConfig 1
execute unless score #ReplaceOres TwistConfig matches 0 run scoreboard players set #ReplaceOres TwistConfig 1
execute unless score #DoorKnocking TwistConfig matches 0 run scoreboard players set #DoorKnocking TwistConfig 1



# --- Default Chance Values ---
# Every increase in 1000 increases the chance for the event to happen by 1% every tick
scoreboard players set #FootstepsTwist Chance 1
scoreboard players set #RandomNametag Chance 1
scoreboard players set #TimeJumpTwist Chance 1
scoreboard players set #MobFlickerSwapTwist Chance 1
scoreboard players set #RandomSounds Chance 1
scoreboard players set #ReplaceOres Chance 1
scoreboard players set #DoorKnocking Chance 1

function schizophrenia:twists/door_knocking/load
schedule function schizophrenia:sanity 1200t replace