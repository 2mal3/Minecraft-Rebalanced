# Generate random number
scoreboard players operation .rng mire.math *= $rng.multiplier mire.math
scoreboard players operation .rng mire.math += $rng.increment mire.math

# Swap bits
scoreboard players operation .rng.bitSwap mire.math = .rng mire.math
scoreboard players operation .rng.bitSwap mire.math /= $65536 mire.math
scoreboard players operation .rng mire.math *= $65536 mire.math
scoreboard players operation .rng mire.math += .rng.bitSwap mire.math

# Return output
scoreboard players operation .temp0 mire.data = %in1 mire.data
scoreboard players operation .temp0 mire.data -= %in0 mire.data
scoreboard players add .temp0 mire.data 1
scoreboard players operation %out0 mire.data = .rng mire.math
scoreboard players operation %out0 mire.data %= .temp0 mire.data
scoreboard players operation %out0 mire.data += %in0 mire.data
