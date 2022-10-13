# Description: Main entity loop every minute
# AS: @e[type=#mire:clock/minute], AT: @s
# Called from function: mire:core/clock/minute
# Datapack by 2mal3 (https://github.com/2mal3)

# Spiders continuously produce cobweb if a player is near
execute if entity @s[type=#mire:spider] run function mire:entity/spider/minute
