# Description: Replaces the enchanted book trade of the villager with a better one as soon as the player interacts with the villager
# AS: player, AT: player
# Called from advancement: mire:entity/villager/liberian/interact
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/villager/librarian/interact

# Replaces the villager trade
execute as @e[type=minecraft:villager,predicate=mire:entity/villager/new_librarian,sort=nearest,limit=1] run function mire:entity/villager/librarian/test

# Little hack to force close the villager gui as the trade gets not updated while the player is in the villager gui
execute in minecraft:the_end positioned ~ ~ ~ run tp @s ~ ~ ~
execute in minecraft:overworld positioned ~ ~ ~ run tp @s ~ ~ ~
