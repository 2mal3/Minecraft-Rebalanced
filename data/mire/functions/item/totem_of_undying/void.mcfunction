# Description: Triggers the totem if the player falls into the void
# AS: player, AT: player
# Called from advancement: mire:item/totem_of_undying/void
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:item/totem_of_undying/void

effect give @s minecraft:instant_damage 1 100 true
