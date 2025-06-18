execute if score #JukeboxTwist TwistConfig matches 1 run function schizophrenia:twists/jukebox/logic

# New lines for handling active jukebox delays (run these every tick regardless of main twist config once started)
execute as @a[tag=active_jukebox_user,scores={PlayerJukeboxDelay=1..}] run scoreboard players remove @s PlayerJukeboxDelay 1
execute as @a[tag=active_jukebox_user,scores={PlayerJukeboxDelay=0}] run function schizophrenia:twists/jukebox/play_and_manage_sound

# New line for checking disc removal:
execute as @e[type=minecraft:marker,tag=jukebox_marker,tag=custom_sound_active] at @s run function schizophrenia:twists/jukebox/check_disc_removal_and_stop
execute if score #FootstepsTwist TwistConfig matches 1 run function schizophrenia:twists/footsteps/logic

# --- Time Jump Twist ---
execute if score #TimeJumpTwist TwistConfig matches 1 if predicate schizophrenia:random_chance_0.001_percent run function schizophrenia:twists/time_jump/logic

# --- Mob Flicker Twist ---
execute if score #MobFlickerTwist TwistConfig matches 1 if predicate schizophrenia:random_chance_mob_flicker run function schizophrenia:twists/mob_flicker/logic
