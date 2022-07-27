# Description: Main command loop every 10 seconds
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/loop/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/loop/10_second 10s replace

# Entity loops
execute as @e[type=#mire:pet] at @s run function mire:entity/loop/10_second
