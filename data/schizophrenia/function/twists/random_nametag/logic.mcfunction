execute if score ray1 Steps > MinSteps Steps unless score ray1 BlockDetected matches 1 run particle minecraft:angry_villager ^ ^ ^
execute unless score ray1 BlockDetected matches 0 run scoreboard players remove ray1 Steps 1
execute if block ^ ^ ^ #schizophrenia:opaque_blocks run scoreboard players set ray1 BlockDetected 1

execute if score ray2 Steps > MinSteps Steps unless score ray2 BlockDetected matches 1 run particle minecraft:angry_villager ^1 ^ ^
execute unless score ray2 BlockDetected matches 1 run scoreboard players remove ray2 Steps 1
execute if block ^1 ^ ^ #schizophrenia:opaque_blocks run scoreboard players set ray2 BlockDetected 1

execute if score ray3 Steps > MinSteps Steps unless score ray3 BlockDetected matches 1 run particle minecraft:angry_villager ^-1 ^ ^
execute unless score ray3 BlockDetected matches 1 run scoreboard players remove ray3 Steps 1
execute if block ^-1 ^ ^ #schizophrenia:opaque_blocks run scoreboard players set ray3 BlockDetected 1

execute if score ray4 Steps > MinSteps Steps unless score ray4 BlockDetected matches 1 run particle minecraft:angry_villager ^ ^-1 ^
execute unless score ray4 BlockDetected matches 1 run scoreboard players remove ray4 Steps 1
execute if block ^ ^-1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray4 BlockDetected 1

execute if score ray5 Steps > MinSteps Steps unless score ray5 BlockDetected matches 1 run particle minecraft:angry_villager ^1 ^-1 ^
execute unless score ray5 BlockDetected matches 1 run scoreboard players remove ray5 Steps 1
execute if block ^1 ^-1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray5 BlockDetected 1

execute if score ray6 Steps > MinSteps Steps unless score ray6 BlockDetected matches 1 run particle minecraft:angry_villager ^-1 ^-1 ^
execute unless score ray6 BlockDetected matches 1 run scoreboard players remove ray6 Steps 1
execute if block ^-1 ^-1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray6 BlockDetected 1

execute if score ray7 Steps > MinSteps Steps unless score ray7 BlockDetected matches 1 run particle minecraft:angry_villager ^ ^1 ^
execute unless score ray7 BlockDetected matches 1 run scoreboard players remove ray7 Steps 1
execute if block ^ ^1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray7 BlockDetected 1

execute if score ray8 Steps > MinSteps Steps unless score ray8 BlockDetected matches 1 run particle minecraft:angry_villager ^1 ^1 ^
execute unless score ray8 BlockDetected matches 1 run scoreboard players remove ray8 Steps 1
execute if block ^1 ^1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray8 BlockDetected 1

execute if score ray9 Steps > MinSteps Steps unless score ray9 BlockDetected matches 1 run particle minecraft:angry_villager ^-1 ^1 ^
execute unless score ray9 BlockDetected matches 1 run scoreboard players remove ray9 Steps 1
execute if block ^-1 ^1 ^ #schizophrenia:opaque_blocks run scoreboard players set ray9 BlockDetected 1

execute positioned ^ ^ ^0.3 run function schizophrenia:twists/random_nametag/logic