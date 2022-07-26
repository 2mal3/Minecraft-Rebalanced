# Description: Buffs honey bottle
# AS: player, AT: player
# Called from advancement: mire:item/food/honey_bottle
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:item/food/honey_bottle

effect give @s minecraft:saturation 2 0 true
# Clears some additional bad effects
effect clear @s minecraft:blindness
effect clear @s minecraft:nausea
