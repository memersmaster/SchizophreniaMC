execute if score ray Steps > MinSteps Steps run particle minecraft:crit ^ ^ ^

scoreboard players remove ray Steps 1

execute if block ^ ^ ^ #schizophrenia:opaque_blocks run return run scoreboard players add ray BlockDetected 1
execute if score ray Steps matches 0 run return 0

execute positioned ^ ^ ^0.2 run function schizophrenia:twists/random_nametag/cast_ray
