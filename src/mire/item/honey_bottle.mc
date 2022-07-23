
import ../../../macros/log.mcm


advancement use {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:honey_bottle"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/honey_bottle/use"
  }
}

function use {
  advancement revoke @s only mire:item/honey_bottle/use
  log MinecraftRebalanced debug entity <Used Honey Bottle>

  # Clear some additional bad potion effects exept from poison
  effect clear @s minecraft:blindness
  effect clear @s minecraft:nausea
}
