# Description: Increases the difficulty if the first player enters the end
# AS: player, AT: player
# Called from advancement: mire:world/story/enter_end
# Datapack by 2mal3 (https://github.com/2mal3)

playsound entity.blaze.death master @s ~ ~10 ~ 0.3 0.4

execute unless score $end mire.data matches 1 run function mire:world/story/end/gamerule
