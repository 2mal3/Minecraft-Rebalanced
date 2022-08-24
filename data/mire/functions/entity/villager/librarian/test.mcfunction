# Description: Replaces the enchanted book trade of the villager with a candle trade to prevent op villager resetting
# AS: @e[type=minecraft:villager,predicate=mire:entity/villager/new_librarian,sort=nearest,limit=1], AT: player
# Called from advancement: mire:entity/villager/liberian/interact
# Datapack by 2mal3 (https://github.com/2mal3)

data remove storage mire:data root.temp
data modify storage mire:data root.temp append from entity @s Offers.Recipes[0]

# Replaces the first or second trade of the villager
execute if data storage mire:data root.temp[{sell:{id:"minecraft:enchanted_book",Count:1b}}] run data modify entity @s Offers.Recipes[0] set value {maxUses:12,xp:1,priceMultiplier:0.05f,demand:-48,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:candle",Count:2b}}
execute unless data storage mire:data root.temp[{sell:{id:"minecraft:enchanted_book",Count:1b}}] run data modify entity @s Offers.Recipes[1] set value {maxUses:12,xp:1,priceMultiplier:0.05f,demand:-48,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:candle",Count:2b}}
