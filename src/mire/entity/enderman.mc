
function hit_player {
  advancement revoke @s only mire:entity/enderman/hit_player
  execute if predicate mire:utilities/random/33 run effect give @s blindness 2 1
}

advancement hit_player {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "blocked": false,
          "source_entity": {
            "type": "minecraft:enderman"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/enderman/hit_player"
  }
}
