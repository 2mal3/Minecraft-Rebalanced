import ../../../macros/log.mcm


function hit_player {
  advancement revoke @s only mire:item/spectral_arrow/hit_player
  log MinecraftRebalanced debug entity <Shot by spectral arrow>
  
  effect give @s minecraft:glowing 30 0 false
}


advancement hit_player {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "type": {
            "direct_entity": {
              "type": "minecraft:spectral_arrow"
            }
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/spectral_arrow/hit_player"
  }
}


