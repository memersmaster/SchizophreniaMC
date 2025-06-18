# --- Footsteps Twist ---
execute if score #FootstepsTwist TwistConfig matches 1 run function schizophrenia:twists/footsteps/logic

# --- Time Jump Twist ---
execute if score #TimeJumpTwist TwistConfig matches 1 if predicate schizophrenia:time_jump_chance run function schizophrenia:twists/time_jump/logic

# --- Mob Flicker SWAP Twist ---
execute if score #MobFlickerSwapTwist TwistConfig matches 1 if predicate schizophrenia:mob_swap_chance run function schizophrenia:twists/mob_flicker_swap/logic