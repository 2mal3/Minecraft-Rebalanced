# Description: Spiders continuously produce cobweb if a player is near
# AS: @e[type=#mire:spider], AT: @s
# Called from function: mire:entity/clock/minute
# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @p[distance=..42,gamemode=!spectator] if block ~ ~ ~ #mire:air run setblock ~ ~ ~ minecraft:cobweb
