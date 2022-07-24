# Description: Makes pigs make more that one kid when bread
# AS: @e[type=minecraft:pig,tag=mire.pig.bread, AT: @s
# Called from function: mire:entity/pig/schedule
# Datapack by 2mal3 (https://github.com/2mal3)

tag @s remove mire.bread

summon minecraft:pig ~ ~ ~ {Age: -23999}
execute if predicate mire:utilities/random/50 run summon minecraft:pig ~ ~ ~ {Age: -23999}
