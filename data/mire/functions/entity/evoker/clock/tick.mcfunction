# Description: Main evoker loop every tick
# AS: @e[type=minecraft:evoker], AT: @s
# Called from function: mire:entity/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

execute positioned ~ ~1 ~ as @e[type=minecraft:arrow,distance=..3.5] at @s run function mire:entity/evoker/arrow
