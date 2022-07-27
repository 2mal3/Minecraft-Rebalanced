# Description: Spiders can place cobweb when under 0 and attacked by a player
# AS: player, AT: player
# Called from advancement: mire:entity/spider/hit
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/spider/hit

execute if predicate mire:utilities/random/33 as @e[type=minecraft:spider,predicate=mire:entity/was_attacked,sort=nearest,limit=1] at @s if block ~ ~ ~ #mire:air run setblock ~ ~ ~ minecraft:cobweb
