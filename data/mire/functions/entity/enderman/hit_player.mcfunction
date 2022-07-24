# Description: Gives the player blindness if he gets hit by an enderman
# AS: server, AT: server
# Called from advancement: mire:entity/enderman/hit_player
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:entity/enderman/hit_player

execute if predicate mire:utilities/random/33 run effect give @s blindness 2 1
