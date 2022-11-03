# Description: Main entity loop every tick
# AS: @e[type=#mire:clock/tick], AT: @s
# Called from function: mire:core/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @s[type=minecraft:player] run function mire:entity/player/clock/tick
execute if entity @s[type=minecraft:evoker] run function mire:entity/evoker/clock/tick
