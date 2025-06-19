execute if score #MobFlickerSwapTwist TwistConfig matches 1 run scoreboard players set #TempPlayer TempVariable 1
execute if score #MobFlickerSwapTwist TwistConfig matches 1 run scoreboard players set #MobFlickerSwapTwist TwistConfig 0

execute if score #MobFlickerSwapTwist TwistConfig matches 0 unless score #TempPlayer TempVariable matches 1 run scoreboard players set #MobFlickerSwapTwist TwistConfig 1 

scoreboard players set #TempPlayer TempVariable 0
function schizophrenia:config
