# Description: Makes pigs make more that one kid when bread
# AS: player, AT: player
# Called from advancement: mire:entity/pig/bread
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/pig/bread
tellraw @a[scores={2mal3.debugMode=4..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector": "@s","color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Bread pigs","color":"aqua"}]

# Runs the next code one tick later to prevent an annoying bug
execute as @e[type=pig,nbt={Age: -24000},limit=1,sort=nearest,tag=!smithed.strict,tag=!global.ignore] at @s run tag @s add mire.bread
schedule function mire:entity/pig/schedule 1t replace
