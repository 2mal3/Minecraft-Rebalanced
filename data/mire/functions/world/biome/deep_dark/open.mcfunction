# Description: Open the elytra
# AS: @a[tag=mire.deepDark], AT: @s
# Called from function: mire:world/biome/deep_dark/schedule
# Datapack by 2mal3 (https://github.com/2mal3)

tag @s remove mire.deepDark

# Restores the old durability value
item modify entity @s armor.chest mire:world/biome/deep_dark/open
