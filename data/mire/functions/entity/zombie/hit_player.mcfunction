# Description: Gives the player hunger and the zombie a speed boost when the zombie hits the player
# AS: player, AT: player
# Called from advancements: mire:entity/zombie/hit_player
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/zombie/hit_player

execute if predicate mire:utilities/random/33 run effect give @s hunger 3 8
execute if predicate mire:utilities/random/80 run effect give @e[type=#mire:zombie,type=!minecraft:husk,sort=nearest,limit=1] minecraft:speed 3 1 false
