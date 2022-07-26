# Description: Improves the totems abilities
# AS: player, AT: player
# Called from advancement: mire:item/totem_of_undying/void
# Datapack by 2mal3 (https://github.com/2mal3)

advancement revoke @s only mire:item/totem_of_undying/trigger

# Run the next part on tick later because the effects would be removed otherwise
tag @s add mire.totemOfUndying
schedule function mire:item/totem_of_undying/schedule 1t replace
