
## UUID
function get_uuid {
  scoreboard players operation @s mire.uuid = %global mire.uuid
  scoreboard players add %global mire.uuid 1
}


## Random
dir random {
  predicate 80 {
    "condition": "minecraft:random_chance",
    "chance": 0.8
  }

  predicate 50 {
    "condition": "minecraft:random_chance",
    "chance": 0.5
  }

  predicate 33 {
    "condition": "minecraft:random_chance",
    "chance": 0.33
  }

  predicate 5 {
    "condition": "minecraft:random_chance",
    "chance": 0.05
  }
}


# Attacked
predicate was_attacked {
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{HurtTime:10s}"
  }
}


# Biome types
predicate river {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:river"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:frozen_river"
      }
    }
  ]
}

predicate warm_ocean {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_warm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:warm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_lukewarm_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:lukewarm_ocean"
      }
    }
  ]
}

predicate ocean {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:reference",
      "name": "mire:utilities/warm_ocean"
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:beach"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:frozen_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:cold_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_ocean"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:deep_cold_ocean"
      }
    }
  ]
}

predicate jungle {
  "condition": "minecraft:alternative",
  "terms": [
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:jungle"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:jungle_hills"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:jungle_edge"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:bamboo_jungle"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:modified_jungle"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:modified_jungle_edge"
      }
    },
    {
      "condition": "minecraft:location_check",
      "predicate": {
        "biome": "minecraft:bamboo_jungle_hills"
      }
    }
  ]
}
