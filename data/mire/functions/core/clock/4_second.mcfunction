# Description: Main command loop every 4 seconds
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/clock/4_second
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/clock/4_second 4s replace

# Entity clocks
execute as @e[type=#mire:clock/4_second] at @s run function mire:entity/clock/4_second
