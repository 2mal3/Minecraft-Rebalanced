# Description: Increases the difficulty if the first player enters the nether
# AS: player, AT: player
# Called from advancement: mire:world/story/enter_nether
# Datapack by 2mal3 (https://github.com/2mal3)

playsound minecraft:music.nether.nether_wastes music @s

execute unless score $nether mire.data matches 1 run function mire:world/story/nether/gamerule
