# Description: Configures the 2mal3s Tweaks Datapack if its available
# AS: server, AT: server
# Called from function: mire:2tw/init
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Configured 2mal3s Tweaks","color":"green"}]
scoreboard players set $2tw.init mire.data 1

data modify storage 2tw:data gamerules.nerfedElytra set value 1b
data modify storage 2tw:data gamerules.betterEndCrystals set value 1b
data modify storage 2tw:data gamerules.higherBellRange set value 1b
data modify storage 2tw:data gamerules.squidInkBlindness set value 1b
data modify storage 2tw:data gamerules.harderPowderSnow set value 1b
data modify storage 2tw:data gamerules.speedPaths set value 1b
data modify storage 2tw:data gamerules.noThunderstormSleep set value 1b
