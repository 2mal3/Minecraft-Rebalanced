# Description: Protects the evoker from arrows
# AS: arrow near the evoker,distance=1..3], AT: @s
# Called from function: mire:entity/evoker/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 3
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1

kill @s
