# AS: server, AT: server
# Called from function tag: minecraft:load
# Datapack by 2mal3 (https://github.com/2mal3)

forceload remove -30000000 1600
forceload add -30000000 1600

execute unless block -30000000 0 1600 minecraft:jukebox run setblock -30000000 0 1600 minecraft:jukebox{RecordItem:{id:"minecraft:comparator",Count:1,tag:{}}}
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box
execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]

fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock
