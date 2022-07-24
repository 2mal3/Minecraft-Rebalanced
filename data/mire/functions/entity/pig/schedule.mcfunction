# Description: Makes pigs make more that one kid when bread
# AS: server, AT: server
# Called from function: mire:entity/pig/bread
# Datapack by 2mal3 (https://github.com/2mal3)

execute as @e[type=minecraft:pig,tag=mire.bread] at @s run function mire:entity/pig/summon
