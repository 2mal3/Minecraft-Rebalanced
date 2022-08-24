# Description: Highers the price of the fletcher stick trade as soon as a player interacts with the villager
# AS: @e[type=minecraft:villager,predicate=mire:entity/villager/new_fletcher,sort=nearest,limit=1], AT: player
# Called from advancement: mire:entity/villager/fletcher/interact
# Datapack by 2mal3 (https://github.com/2mal3)

data remove storage mire:data root.temp
data modify storage mire:data root.temp append from entity @s Offers.Recipes[0]

# Replaces the first or second trade of the villager
execute if data storage mire:data root.temp[{buy:{id:"minecraft:stick",Count:32b}}] run data modify entity @s Offers.Recipes[0] set value {maxUses:16,xp:2,priceMultiplier:0.05f,demand:-32,buy:{id:"minecraft:stick",Count:64b},sell:{id:"minecraft:emerald",Count:1b}}
execute unless data storage mire:data root.temp[{buy:{id:"minecraft:stick",Count:32b}}] run data modify entity @s Offers.Recipes[1] set value {maxUses:16,xp:2,priceMultiplier:0.05f,demand:-32,buy:{id:"minecraft:stick",Count:64b},sell:{id:"minecraft:emerald",Count:1b}}
