# Description: Modify each evoker at spawn
# AS: @e[type=minecraft:evoker], AT: @s
# Called from function: mire:entity/clock/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

tag @s add mire.evoker.processed
tellraw @a[scores={2mal3.debugMode=4..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector": "@s","color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Processed Evoker","color":"aqua"}]

attribute @s generic.max_health base set 40
effect give @s minecraft:instant_health 1 16 true
