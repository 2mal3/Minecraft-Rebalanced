# Description: Installs the datapack at its first start
# AS: server, AT: server
# Called from function: mire:core/load
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed","color":"green"}]
scoreboard players set %installed mire.data 1

scoreboard objectives add mire.data dummy
scoreboard objectives add 2mal3.debugMode dummy
scoreboard objectives add mire.math dummy

# Variables
#declare score_holder $version
#declare score_holder %rain
#declare score_holder .temp0
#declare score_holder $2tw.init
#declare score_holder $nether
#declare score_holder $end
#declare score_holder %in0
#declare score_holder %in1
#declare score_holder %out0
scoreboard players set $version mire.data 000100
scoreboard players set %rain mire.data 0

# Init random number generator
execute store result score .rng mire.math run seed
scoreboard players set $65536 mire.math 65536
scoreboard players set $rng.multiplier mire.math 1664525
scoreboard players set $rng.increment mire.math 1013904223
scoreboard players set .rng.bitSwap mire.math 0

#declare storage mire:data
data merge storage mire:data {root: {}}

gamerule randomTickSpeed 2
# Start gamerules. These will be changed later in the game progress
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule disableRaids true
difficulty easy

# Send installation massage after 4 seconds
schedule function mire:core/init/send_message 4s replace
