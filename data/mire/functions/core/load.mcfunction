# Description: Run commands at each reload of the datapack
# AS: server, AT: server
# Called from function tag: minecraft:load
# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"MinecraftRebalanced","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded","color":"green"}]

scoreboard objectives add mire.data dummy

# Install the datapack if its not
execute unless score %installed mire.data matches 1 run function mire:core/init/init
# Update the datapack if a new version is installed
execute if score %installed mire.data matches 1 unless score $version mire.data matches 000100 run function mire:core/__generated__/execute/14

# Restarts all clocks
schedule function mire:core/clock/minute 60s replace
schedule function mire:core/clock/10_second 10s replace
schedule function mire:core/clock/10_tick 10t replace
