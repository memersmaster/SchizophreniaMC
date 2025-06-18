execute as @s at @s anchored eyes positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Tags:["raytrace_temp"],Invisible:1b,NoGravity:1b,Marker:1b}

# Move the marker forward in look direction until a block is hit
function schizophrenia:twists/random_nametag/raytrace_step
