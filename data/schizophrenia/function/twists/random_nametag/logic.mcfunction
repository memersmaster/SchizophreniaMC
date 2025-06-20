tellraw @a[tag=op] [{"text":"[TwistedMC Debug] Spawn Text Anomaly Triggered!", "color":"dark_purple"}]

scoreboard players set ray BlockDetected 0
scoreboard players set ray Steps 20
execute positioned ^-0.8 ^0.8 ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0 ^0.8 ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0.8 ^0.8 ^ run function schizophrenia:twists/random_nametag/cast_ray

# Middle row
scoreboard players set ray Steps 20
execute positioned ^-0.8 ^ ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0 ^ ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0.8 ^ ^ run function schizophrenia:twists/random_nametag/cast_ray

# Bottom row
scoreboard players set ray Steps 20
execute positioned ^-0.8 ^-1 ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0 ^-1 ^ run function schizophrenia:twists/random_nametag/cast_ray
scoreboard players set ray Steps 20
execute positioned ^0.8 ^-1 ^ run function schizophrenia:twists/random_nametag/cast_ray

execute if score ray BlockDetected matches 9 positioned ^ ^0.5 ^5 run function schizophrenia:twists/random_nametag/spawn_text