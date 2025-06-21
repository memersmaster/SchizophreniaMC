execute if score #DoorKnocking TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #DoorKnocking TwistConfig matches 1 run scoreboard players set #DoorKnocking TwistConfig 0

execute if score #DoorKnocking TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #DoorKnocking TwistConfig 1

scoreboard players set #TempPlayer TempVariable 0
function schizophrenia:config
