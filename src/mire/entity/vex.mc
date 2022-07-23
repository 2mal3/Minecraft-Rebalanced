import ../../../macros/log.mcm


function spawn {
  log MinecraftRebalanced debug entity Processed
  tag @s add mire.vex.processed

  attribute @s generic.max_health base set 8
}


function player_hurt_vex {
  advancement revoke @s only mire:entity/vex/player_hurt_vex

  effect give @e[type=minecraft:vex,predicate=mire:utilities/was_attacked,sort=nearest,limit=1] minecraft:strength 10 0 false
}

advancement player_hurt_vex {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": {
          "type": "minecraft:vex"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/vex/player_hurt_vex"
  }
}
