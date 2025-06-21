# --- Footsteps Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #FootstepsTwist TwistConfig matches 1 as @a if score @s Chance <= #FootstepsTwist Chance run function schizophrenia:twists/footsteps/logic

# --- Time Jump Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #TimeJumpTwist TwistConfig matches 1 as @a if score @s Chance <= #TimeJumpTwist Chance run function schizophrenia:twists/time_jump/logic

# --- Mob Flicker SWAP Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #MobFlickerSwapTwist TwistConfig matches 1 as @a if score @s Chance <= #MobFlickerSwapTwist Chance run function schizophrenia:twists/mob_flicker_swap/logic

# --- Random NameTag Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #RandomNametag TwistConfig matches 1 as @a if score @s Chance <= #RandomNametag Chance at @s anchored eyes positioned ^ ^1.5 ^ run function schizophrenia:twists/random_nametag/logic

# --- Random Sounds Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #RandomSounds TwistConfig matches 1 as @a if score @s Chance <= #RandomSounds Chance run function schizophrenia:twists/random_sounds/logic

# --- Replace Ores Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #RandomSounds TwistConfig matches 1 as @a if score @s Chance <= #RandomSounds Chance run function schizophrenia:twists/random_sounds/logic

# --- Replace Ores Twist ---
execute as @a store result score @s Chance run random value 1..100000
execute if score #DoorKnocking TwistConfig matches 1 as @a if score @s Chance <= #DoorKnocking Chance run function schizophrenia:twists/random_sounds/logic

tellraw @a[team=afkDis.afk] 'You Are AFK'