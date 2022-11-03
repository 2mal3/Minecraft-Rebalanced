# Description: Main entity loop every 4 seconds
# AS: @e[type=#mire:clock/4_second], AT: @s
# Called from function: mire:core/clock/4_second
# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @s[type=minecraft:evoker] run function mire:entity/evoker/clock/4_second
