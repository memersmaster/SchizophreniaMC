execute if score #RandomNametag TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #RandomNametag TwistConfig matches 1 run scoreboard players set #RandomNametag TwistConfig 0

execute if score #RandomNametag TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #RandomNametag TwistConfig 1 

scoreboard players set #TempPlayer TempVariable 0

