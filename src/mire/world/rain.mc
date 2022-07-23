import ../../../macros/log.mcm


function loop {
  execute if score %rain mire.data matches 0 if predicate mire:world/rain/is_raining run {
    log MinecraftRebalanced info server <Rain has started>
    scoreboard players set %rain mire.data 1

    gamerule randomTickSpeed 12
  }

  execute if score %rain mire.data matches 1 unless predicate mire:world/rain/is_raining run {
    log MinecraftRebalanced info server <Rain has stopped>
    scoreboard players set %rain mire.data 0

    gamerule randomTickSpeed 2
  }
}

predicate is_raining {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:weather_check",
      "raining": true
    },
    {
      "condition": "minecraft:weather_check",
      "thundering": true
    }
  ]
}
