# Description: Main command loop every 10 ticks
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/clock/10_tick
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/clock/10_tick 10t replace

# Entity clocks
execute as @e[type=#mire:clock/10_tick] at @s run function mire:entity/clock/10_tick
