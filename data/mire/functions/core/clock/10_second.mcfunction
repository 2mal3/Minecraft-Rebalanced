# Description: Main command loop every 10 seconds
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/clock/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/clock/10_second 10s replace

# Entity clocks
execute as @e[type=#mire:pet] at @s run function mire:entity/clock/10_second
