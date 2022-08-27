# Description: Main player loop every tick
# AS: @a, AT: @s
# Called from function: mire:entity/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

execute if predicate mire:world/deep_dark if predicate mire:entity/has_elytra if score @s mire.useRocket matches 1.. if score @s mire.useElytra matches 1.. run function mire:world/biome/deep_dark/use_rocket

scoreboard players reset @s[scores={mire.useElytra=1..}] mire.useElytra
scoreboard players reset @s[scores={mire.useRocket=1..}] mire.useRocket
