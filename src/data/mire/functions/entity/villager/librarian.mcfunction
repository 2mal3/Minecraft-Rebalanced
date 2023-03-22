
# Replace the enchanted book trade with other ones
function ./overhaul:
    tag @s add mire.villager.processed

    data remove entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book"}}]
    data remove block -30000000 0 1602 Items
    loot insert -30000000 0 1602 loot ./trades
    data modify entity @s Offers.Recipes append from block -30000000 0 1602 Items[0].tag


predicate ./novice_librarian_with_book {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "type": "minecraft:villager",
        "nbt": "{VillagerData:{level:1,profession:\"minecraft:librarian\"},Offers:{Recipes:[{sell:{id:\"minecraft:enchanted_book\",Count:1b}}]}}"
    }
}
