# Description: Modify each zombie at spawn
# AS: @e[type=#mire:zombie,tag=!mire.zombie.processed], AT: @s
# Called from function: mire:entity/clock/10_second
# Datapack by 2mal3 (https://github.com/2mal3)

tag @s add mire.zombie.processed

attribute @s zombie.spawn_reinforcements base set 0.05
# Increases the general armor and tool drop rate, especially good for tridents
data merge entity @s {HandDropChances: [0.4f, 0.4f], ArmorDropChances: [0.3f, 0.3f, 0.3f, 0.3f]}

# Reduces the health of baby so they can be killed more easily
execute if predicate mire:entity/is_baby run attribute @s generic.max_health base set 10

# Gives zombies a slight speed modifier to improve group building
scoreboard players set %in0 mire.data 20
scoreboard players set %in1 mire.data 30
function mire:utilities/random
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.01 run scoreboard players get %out0 mire.data
