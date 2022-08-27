# Description: Main command loop every tick
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/clock/tick 1t replace

execute as @e[type=#mire:clock/tick] at @s run function mire:entity/clock/tick
