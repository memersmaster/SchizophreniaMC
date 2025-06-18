# Mob Flicker SWAP Anomaly - Main Logic Entry Point
# Called from tick.mcfunction if #MobFlickerSwapTwist is enabled and predicate passes.
# This function ensures that only one player is chosen to potentially witness a flicker.

# For now, directly calls initiate_flicker. Could add more global checks here if needed.
function schizophrenia:twists/mob_flicker_swap/initiate_flicker
