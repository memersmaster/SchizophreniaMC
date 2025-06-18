# Executed by the scheduler to remove the 'flicker_processed_this_tick' tag from mobs.
# This ensures mobs can be selected again in future ticks.
tag @e[tag=flicker_processed_this_tick] remove flicker_processed_this_tick
