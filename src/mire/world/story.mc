import ../../../macros/log.mcm


## Enter Nether
function enter_nether {
  playsound minecraft:music.nether.nether_waste music @a

  # Uniqe things for the global difficulty
  execute unless score $nether mire.data matches 1 run {
    log MinecraftRebalanced info entity <The Nether was entered>
    scoreboard players set $nether mire.data 1

    execute in minecraft:overworld run weather thunder

    difficulty normal

    gamerule doInsomnia true
    gamerule doPatrolSpawning true
    gamerule doTraderSpawning true
  }
}

advancement enter_nether {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:location",
      "conditions": {
        "location": {
          "dimension": "minecraft:the_nether"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:world/story/enter_nether"
  }
}


## Enter end
function enter_end {
  playsound entity.blaze.death master @s ~ ~10 ~ 0.3 0.4

  # Uniqe things for the global difficulty
  execute unless score $end mire.data matches 1 run {
    log MinecraftRebalanced info entity <The End was entered>
    scoreboard players set $end mire.data 1

    difficulty hard

    gamerule doInsomnia false
    gamerule doPatrolSpawning true
    gamerule doTraderSpawning true
  }
}

advancement enter_end {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:location",
      "conditions": {
        "location": {
          "dimension": "minecraft:the_end"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:world/story/enter_end"
  }
}
