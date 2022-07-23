import ../../../macros/log.mcm


function spawn {
  log MinecraftRebalanced debug entity Processed
  tag @s add mire.spider.processed

  effect give @s minecraft:speed 99999 1 true
}


function player_hit_spider {
  advancement revoke @s only mire:entity/spider/player_hit_spider

  execute if predicate mire:utilities/random/33 at @e[type=#mire:entity/spider/spiders,sort=nearest,limit=1,predicate=mire:utilities/was_attacked] run fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace minecraft:air
}

entities spiders {
  minecraft:spider
  minecraft:cave_spider
}

advancement player_hit_spider {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": {
          "type": "#mire:entity/spider/spiders",
          "location": {
            "position": {
              "y": {
                "max": 0
              }
            }
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/spider/player_hit_spider"
  }
}
