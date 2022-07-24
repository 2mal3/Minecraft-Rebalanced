
function drink_healing {
  advancement revoke @s only mire:item/healing_potion/drink_strong
  advancement revoke @s only mire:item/healing_potion/drink_normal

  effect give @s minecraft:instant_health 1 0 true
}

# Strong healing potion
advancement drink_strong {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:potion"
          ],
          "potion": "minecraft:healing"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/healing_potion/drink"
  }
}

# Normal healing potion
advancement drink_normal {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:potion"
          ],
          "potion": "minecraft:strong_healing"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/healing_potion/drink"
  }
}
