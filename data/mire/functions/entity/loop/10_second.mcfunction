# Description: Main entity loop every 10 seconds
# AS: @e[type=#mire:loop/10_second], AT: @s
# Called from function: mire:core/loop/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

# Gives pets a slow regeneration
execute if entity @s[type=#mire:pet] run function mire:entity/pet/regenerate
