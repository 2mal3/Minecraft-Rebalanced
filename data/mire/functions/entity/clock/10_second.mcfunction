# Description: Main entity loop every 10 seconds
# AS: @e[type=#mire:clock/10_second], AT: @s
# Called from function: mire:core/clock/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

# Gives pets a slow regeneration
execute if entity @s[type=#mire:pet] run function mire:entity/pet/regenerate
# Gives spiders a speed buff
execute if entity @s[type=#mire:spider,tag=!mire.spider.processed] run function mire:entity/spider/spawn
# Zombie spawns
execute if entity @s[type=#mire:zombie,tag=!mire.zombie.processed] run function mire:entity/zombie/spawn
# Evoker spawns
execute if entity @s[type=minecraft:evoker,tag=!mire.evoker.processed] run function mire:entity/evoker/spawn
