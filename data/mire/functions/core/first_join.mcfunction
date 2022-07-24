# Description: Commands that run when a player enters the world at the first time
# AS: server, AT: server
# Called from advancement: mire:core/first_join
# Datapack by 2mal3 (https://github.com/2mal3)

# Notifies the player if he uses an outdated minecraft version
execute store result score .temp0 mire.data run data get entity @s DataVersion
execute unless score .temp0 mire.data matches 3105.. run tellraw @s [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.19 ore later to prevent errors.","color":"gold"}]
