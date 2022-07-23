import ../../../macros/wait.mcm
import ../../../macros/log.mcm


function bread {
  advancement revoke @s only mire:entity/pig/bread
  log MinecraftRebalanced debug entity <Bread pigs>

  wait as @a in mire.schedule for 1t {
    execute as @e[type=pig,nbt={Age: -24000},limit=1,sort=nearest,tag=!global.ignore] at @s run {
      summon minecraft:pig ~ ~ ~ {Age: -23999}
      execute if predicate mire:utilities/random/50 run summon minecraft:pig ~ ~ ~ {Age: -23999}
    }
  }
}

advancement bread {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:bred_animals",
      "conditions": {
        "parent": {
          "type": "minecraft:pig"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/pig/bread"
  }
}

