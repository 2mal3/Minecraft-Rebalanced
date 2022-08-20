# Description: Clock for zombies every 10 ticks
# AS: @e[type=#mire:zombie], AT: @s
# Called from function: mire:entity/clock/10_tick
# Datapack by 2mal3 (https://github.com/2mal3)

# Zombies destroy torches
execute if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~1 ~ minecraft:torch run setblock ~ ~1 ~ minecraft:air destroy
