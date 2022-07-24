
function load {
  scoreboard objectives add 2mal3.data dummy
  execute unless score $rng.init 2mal3.data matches 1 run {
    name init
    scoreboard players set $rng.init 2mal3.data 1

    execute store result score .rng 2mal3.data run seed
    scoreboard players set $65536 2mal3.data 65536
    scoreboard players set $rng.multiplier 2mal3.data 1664525
    scoreboard players set $rng.increment 2mal3.data 1013904223
    scoreboard players set .rng.bitSwap 2mal3.data 0
  }
}

function rng {
  # Generate rng number
  scoreboard players operation .rng 2mal3.data *= $rng.multiplier 2mal3.data
  scoreboard players operation .rng 2mal3.data += $rng.increment 2mal3.data

  # Swap bits
  scoreboard players operation .rng.bitSwap 2mal3.data = .rng 2mal3.data
  scoreboard players operation .rng.bitSwap 2mal3.data /= $65536 2mal3.data
  scoreboard players operation .rng 2mal3.data *= $65536 2mal3.data
  scoreboard players operation .rng 2mal3.data += .rng.bitSwap 2mal3.data

  # Return output
  scoreboard players operation .temp0 2mal3.data = %in1 2mal3.data
  scoreboard players operation .temp0 2mal3.data -= %in0 2mal3.data
  scoreboard players add .temp0 2mal3.data 1
  scoreboard players operation %out0 2mal3.data = .rng 2mal3.data
  scoreboard players operation %out0 2mal3.data %= .temp0 2mal3.data
  scoreboard players operation %out0 2mal3.data += %in0 2mal3.data
}
