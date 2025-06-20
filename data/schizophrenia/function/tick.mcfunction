# --- Footsteps Twist ---
execute if score #FootstepsTwist TwistConfig matches 1 if predicate schizophrenia:footsteps_twist_chance run function schizophrenia:twists/footsteps/logic

# --- Time Jump Twist ---
execute if score #TimeJumpTwist TwistConfig matches 1 if predicate schizophrenia:time_jump_twist_chance run function schizophrenia:twists/time_jump/logic

# --- Mob Flicker SWAP Twist ---
execute if score #MobFlickerSwapTwist TwistConfig matches 1 if predicate schizophrenia:mob_swap_twist_chance run function schizophrenia:twists/mob_flicker_swap/logic

# --- Random NameTag Twist ---
execute if score #RandomNametag TwistConfig matches 1 if predicate schizophrenia:random_nametag_chance at @r anchored eyes positioned ^ ^1.5 ^ run function schizophrenia:twists/random_nametag/logic

# --- Random Sounds Twist ---
execute if score #RandomSounds TwistConfig matches 1 if predicate schizophrenia:random_sound_chance run function schizophrenia:twists/random_sounds/logic
