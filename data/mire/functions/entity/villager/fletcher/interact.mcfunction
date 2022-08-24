# Description: Highers the price of the fletcher stick trade as soon as a player interacts with the villager
# AS: player, AT: player
# Called from advancement: mire:entity/villager/fletcher/interact
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/villager/fletcher/interact

# Replaces the villager trade
execute as @e[type=minecraft:villager,predicate=mire:entity/villager/new_fletcher,sort=nearest,limit=1] run function mire:entity/villager/fletcher/test

# Little hack to force close the villager gui as the trade gets not updated while the player is in the villager gui
execute in minecraft:the_end positioned ~ ~ ~ run tp @s ~ ~ ~
execute in minecraft:overworld positioned ~ ~ ~ run tp @s ~ ~ ~
