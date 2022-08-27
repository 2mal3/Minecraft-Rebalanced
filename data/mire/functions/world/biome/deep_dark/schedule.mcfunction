# Description: Wait one tick to close the elytra
# AS: server, AT: server
# Called from function: mire:world/biome/deep_dark/use_rocket
# Datapack by 2mal3 (https://github.com/2mal3)

execute as @a[tag=mire.deepDark] at @s run function mire:world/biome/deep_dark/open
