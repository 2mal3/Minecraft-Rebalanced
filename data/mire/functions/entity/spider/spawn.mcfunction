# Description: Gives spiders a speed buf
# AS: @e[type=#mire:spider,tag=!mire.spider.processed], AT: @s
# Called from function: mire:entity/clock/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

tag @s add mire.spider.processed

attribute @s generic.movement_speed modifier add 444991d9-5325-4d36-a734-ae7027e2a0e3 "mire.spider.speed" 0.4 multiply
