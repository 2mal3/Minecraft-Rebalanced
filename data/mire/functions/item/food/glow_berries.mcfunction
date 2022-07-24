# Description: Buffs glow berries
# AS: player, AT: player
# Called from advancement: mire:item/food/glow_berries
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:item/food/glow_berries
effect give @s minecraft:glowing 30 0 false
effect give @s minecraft:speed 10 1 false
effect give @s minecraft:haste 10 1 false
