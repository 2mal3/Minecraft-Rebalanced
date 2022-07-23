import ../../../macros/log.mcm


## Special modifyers of new spawned zombies
function spawn {
  log MinecraftRebalanced debug entity Processed
  tag @s add mire.zombie.processed

  attribute @s zombie.spawn_reinforcements base set 0.05
  # Highers the generell armor and tool drop rate, especially good for tridents
  data merge entity @s {HandDropChances: [0.4f, 0.4f], ArmorDropChances: [0.3f, 0.3f, 0.3f, 0.3f]}

  # Reduces the health of baby so they can be killed more easealy
  execute if predicate mire:entity/zombie/is_baby run attribute @s generic.max_health base set 10
}


## Zombies destroy torches, when they walk over them
function loop {
  execute if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ minecraft:air destroy 
  execute if block ~ ~1 ~ minecraft:torch run setblock ~ ~1 ~ minecraft:air destroy 
}


## Gives the player hunger and the zombie speed with a chance if the zombie hits the player
function hit_player {
  advancement revoke @s only mire:entity/zombie/hit_player

  execute if predicate mire:utilities/random/33 run effect give @s hunger 3 8
  execute if predicate mire:utilities/random/80 run effect give @e[type=#mire:entity/zombie/zombies,sort=nearest,limit=1] minecraft:speed 3 1 false
}

advancement hit_player {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "damage": {
          "blocked": false,
          "source_entity": {
            "type": "#mire:entity/zombie/zombies"
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/zombie/hit_player"
  }
}


entities zombies {
  minecraft:zombie
  minecraft:zombie_villager
  minecraft:drowned
  minecraft:husk
}

predicate is_baby {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_baby": true
    }
  }
}

