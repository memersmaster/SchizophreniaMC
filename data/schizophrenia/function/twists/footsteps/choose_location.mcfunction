summon marker ~ ~ ~ {Tags:["choose_footsteps_pos_marker"]}
spreadplayers ~ ~ 10 10 false @e[type=marker,tag=choose_footsteps_pos_marker]
execute at @n[type=marker,tag=choose_footsteps_pos_marker] run function schizophrenia:twists/footsteps/play_footsteps
kill @n[type=marker,tag=choose_footsteps_pos_marker]