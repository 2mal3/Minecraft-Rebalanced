# Description: Uninstalls the datapack
# AS: server, AT: server
# Called from function: -
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack uninstalled","color":"green"}]

scoreboard objectives remove mire.data
scoreboard objectives remove mire.math

tellraw @a {"text":"Minecraft Rebalanced v0.1.0 by 2mal3 was successfully uninstalled.","color": "green"}

datapack disable "file/Minecraft-Rebalanced"
datapack disable "file/Minecraft-Rebalanced.zip"
