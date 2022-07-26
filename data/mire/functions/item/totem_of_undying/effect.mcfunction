# Description: Improves the totems abilities
# AS: @a[tag=mire.totemOfUndying], AT: @s
# Called from function: mire:item/totem_of_undying/schedule
# Datapack by 2mal3 (https://github.com/2mal3

tag @s remove mire.totemOfUndying

effect give @s minecraft:water_breathing 180 0 false

# Saves the player from the void
execute positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s minecraft:levitation 4 50 false
execute positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s minecraft:slow_falling 60 0 false
