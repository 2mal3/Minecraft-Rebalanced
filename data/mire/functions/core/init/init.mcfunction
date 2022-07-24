# Description: Installs the datapack at its first start
# AS: server, AT: server
# Called from function: mire:core/load
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed","color":"green"}]
scoreboard players set %installed mire.data 1

scoreboard objectives add mire.data dummy
scoreboard objectives add 2mal3.debugMode dummy
scoreboard objectives add mire.schedule dummy
scoreboard objectives add mire.fleeingTime dummy

# Variables
#declare score_holder $version
#declare score_holder %rain
#declare score_holder .temp0
#declare score_holder $2tw.init
scoreboard players set $version mire.data 000100
scoreboard players set %rain mire.data 0

#declare storage mire:data
data merge storage mire:data {root: {desertPyramids: []}}

team add mire.noCollisionSelf
team modify mire.noCollisionSelf collisionRule pushOwnTeam

# Start gamerules. These will be changed later in the game progress
gamerule randomTickSpeed 2
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
difficulty easy

# Send installation massage after 4 seconds
schedule function mire:core/init/send_message 4s replace
