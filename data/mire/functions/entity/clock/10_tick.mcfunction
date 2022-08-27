# Description: Main entity loop every 10 ticks
# AS: @e[type=#mire:clock/10_tick], AT: @s
# Called from function: mire:core/clock/10_tick
# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @s[type=#mire:zombie] run function mire:entity/zombie/10_tick_clock
execute if entity @s[type=minecraft:player] run function mire:entity/player/clock/10_tick
