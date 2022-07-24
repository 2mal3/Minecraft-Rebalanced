
function block {
  advancement revoke @s only mire:item/shield/sneak/block

  execute positioned ^ ^ ^0.8 run particle block stripped_spruce_log ~ ~1.1 ~ 0.1 0.1 0.1 0.3 32
  playsound minecraft:item.axe.strip player @a ~ ~ ~ 1 1.3

  effect give @s slowness 1 1 true
  effect give @s slowness 2 0 true
}

advancement block {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "player": {
          "flags": {
            "is_sneaking": true
          }
        },
        "damage": {
          "dealt": {
            "min": 3,
            "max": 255
          },
          "blocked": true,
          "type": {
            "is_magic": false,
            "is_projectile": false
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/shield/sneak/block"
  }
}
