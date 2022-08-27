# Description: Stop the elytra flight if a player uses a rocket in ancient city's
# AS: @a[scores={mire.useRocket=1..,mire.useElytra=1..},predicate=mire:world/deep_dark,predicate=mire:entity/has_elytra], AT: @s
# Called from function: mire:entity/player/clock/tick
# Datapack by 2mal3 (https://github.com/2mal3)

# Fancy effects
particle minecraft:nautilus ~ ~ ~ 0.5 0.5 0.5 0 100
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 0.1

# Store the old durability value for later
item modify entity @s armor.chest mire:world/biome/deep_dark/store
# Set the elytra durability to 1 to disable it for a moment
item modify entity @s armor.chest mire:world/biome/deep_dark/close

# Reopen the elytra in one tick
tag @s add mire.deepDark
schedule function mire:world/biome/deep_dark/schedule 1t append
