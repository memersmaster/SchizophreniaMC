execute if score #TimeJumpTwist TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #TimeJumpTwist TwistConfig matches 1 run scoreboard players set #TimeJumpTwist TwistConfig 0

execute if score #TimeJumpTwist TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #TimeJumpTwist TwistConfig 1 

scoreboard players set #TempPlayer TempVariable 0

