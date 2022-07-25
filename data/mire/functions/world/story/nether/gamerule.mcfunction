# Description: Increases the difficulty if the first player enters the nether
# AS: player, AT: player
# Called from function: mire:world/story/nether/enter
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"First player entered the nether","color":"green"}]
scoreboard players set $nether mire.data 1

execute in minecraft:overworld run weather thunder

difficulty normal
gamerule doInsomnia true
gamerule doPatrolSpawning true
gamerule doTraderSpawning true
gamerule disableRaids false
