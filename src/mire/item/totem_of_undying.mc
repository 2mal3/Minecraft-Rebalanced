import ../../../macros/wait.mcm


predicate in_void {
  "condition": "minecraft:location_check",
  "predicate": {
    "position": {
      "y": {
        "min": -1024,
        "max": -64
      }
    }
  }
}


## Additional commands when the player uses a totem
function trigger {
  advancement revoke @s only mire:item/totem_of_undying/trigger

  # Gives extra effects afer one tick because you can not apply effects in the same tick the totem triggers
  wait as @a in mire.schedule for 1t {
    effect give @s minecraft:water_breathing 60 0 false
    effect give @s minecraft:instant_health
    # Special effects to save the player from the void
    execute if predicate mire:item/totem_of_undying/in_void run {
      effect give @s minecraft:levitation 3 67 false
      effect give @s minecraft:slow_falling 30 0 false
    }
  }
}

advancement trigger {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:used_totem"
    }
  },
  "rewards": {
    "function": "mire:item/totem_of_undying/trigger"
  }
}


## Activates the totem if the player falls into the void
function void {
  advancement revoke @s only mire:item/totem_of_undying/void
  
  # Wait a tick befor trigger totem because the player cant get damge in this tick anymore
  wait as @a in mire.schedule for 1t {
    effect give @s minecraft:instant_damage 1 100 true
  }
}

advancement void {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "player": [
          {
            "condition": "minecraft:alternative",
            "terms": [
              {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                  "equipment": {
                    "offhand": {
                      "items": [
                        "minecraft:totem_of_undying"
                      ]
                    }
                  }
                }
              },
              {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                  "equipment": {
                    "mainhand": {
                      "items": [
                        "minecraft:totem_of_undying"
                      ]
                    }
                  }
                }
              }
            ]
          }
        ],
        "damage": {
          "type": {
            "bypasses_invulnerability": true
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/totem_of_undying/void"
  }
}
