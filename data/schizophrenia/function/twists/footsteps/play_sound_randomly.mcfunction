# Play sound 3 blocks away in positive X and Z relative to the player.
# The volume is set to 1.0, pitch to 1.0. These can be varied for more creepiness.
# The minimum distance (last argument) ensures the sound isn't too quiet if the player is near the source.
playsound minecraft:block.stone.step master @s ~3 ~0 ~3 2.0 1.0 1
