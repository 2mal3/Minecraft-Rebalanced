# Description: Increases the difficulty if the first player enters the end
# AS: player, AT: player
# Called from function: mire:world/story/end/enter
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"First player entered the end","color":"green"}]
scoreboard players set $end mire.data 1

difficulty hard
gamerule doInsomnia false
