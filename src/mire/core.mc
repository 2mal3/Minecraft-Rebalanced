import ../../macros/log.mcm


entities process {
  minecraft:skeleton
  \#mire:entity/spider/spiders
  minecraft:wither_skeleton
  \#mire:entity/zombie/zombies
  \#mire:entity/pet/pets
  minecraft:player
  minecraft:wandering_trader
  minecraft:marker
}


dir loops {
  clock 10t {
    name 10_tick

    execute as @e[type=#mire:core/process,tag=!global.ignore,tag=!smithed.entity,tag=!smithed.strict,tag=!smithed.block] at @s run {
      # Zombies destroy torches they walk over
      execute if entity @s[type=#mire:entity/zombie/zombies] run function mire:entity/zombie/loop
    }
  }

  clock 1s {
    name second
    
    # Entity ticks
    execute as @e[type=#mire:core/process,tag=!global.ignore,tag=!smithed.entity,tag=!smithed.strict,tag=!smithed.block] at @s run {
      # Players
      execute if entity @s[type=minecraft:player] run {
        function mire:world/structures/stronghold/player_loop
        function mire:world/structures/desert_pyramid/player_loop
      }

      # Removes fleeing marker when there is no animal
      # execute if entity @s[type=minecraft:cat,tag=mire.fleeingMarker] unless entity @e[type=#mire:entity/animal/animals,scores={mire.fleeingTime=1..},distance=..1] run tp @s ~ -1000 ~
    }
  }

  clock 10s {
    name 10_second
    
    # Entity ticks
    execute as @e[type=#mire:core/process,tag=!global.ignore,tag=!smithed.entity,tag=!smithed.strict,tag=!smithed.block] at @s run {
      execute if entity @s[type=#mire:entity/pet/pets] run function mire:entity/pet/loop

      # Entity spawning
      execute if entity @s[type=minecraft:skeleton,tag=!mire.skeleton.processed] run function mire:entity/skeleton/spawn
      execute if entity @s[type=#mire:entity/spider/spiders,tag=!mire.spider.processed] run function mire:entity/spider/spawn
      execute if entity @s[type=minecraft:wither_skeleton,tag=!mire.witherSkeleton.processed] run function mire:entity/wither_skeleton/spawn
      execute if entity @s[type=#mire:entity/zombie/zombies,tag=!mire.zombie.processed] run function mire:entity/zombie/spawn
      execute if entity @s[type=minecraft:wandering_trader,tag=!mire.wanderingTrader.processed] run function mire:entity/wandering_trader/spawn

      # Custom structures
      # Desert pyramid
      execute if entity @s[type=minecraft:player,predicate=mire:world/structures/desert_pyramid/in_desert] run function mire:world/structures/desert_pyramid/find
      execute if entity @s[type=minecraft:marker,tag=mire.desertPyramid] run function mire:world/structures/desert_pyramid/modify
    }
  }

  clock 60s {
    name minute

    function mire:world/rain/loop
  }
}


function load {
  log MinecraftRebalanced info server <Datapack reloaded>

  scoreboard objectives add mire.data dummy

  # scoreboard players set %installed mire.data 0
  # Initializes the datapack at the first startup or new version
  execute unless score %installed mire.data matches 1 run {
    log MinecraftRebalanced info server <Datapack installed>
    scoreboard players set %installed mire.data 1

    scoreboard objectives add mire.data dummy
    scoreboard objectives add 2mal3.data dummy
    scoreboard objectives add 2mal3.debugMode dummy
    scoreboard objectives add mire.schedule dummy
    scoreboard objectives add mire.fleeingTime dummy
    # Set the version in format: xx.xx.xx
    scoreboard players set $version mire.data 010000
    # Set variables
    scoreboard players set %rain mire.data 0

    # Init storage
    #declare storage mire:data
    data merge storage mire:data {root: {desertPyramids: []}}

    # Teams
    team add mire.noCollisionSelf
    team modify mire.noCollisionSlef collisionRule pushOwnTeam

    # Set start gamerules, changes if the game processes
    gamerule doInsomnia false
    gamerule doPatrolSpawning false
    gamerule doTraderSpawning false
    gamerule randomTickSpeed 2
    difficulty easy

    schedule 4s replace {
      tellraw @a {"text":"Minecraft Rebalanced v1.0.0 by 2mal3 was installed!","color":"green"}
    }
  }
  execute if score %installed mire.data matches 1 unless score $version mire.data matches 010000 run {
    log MinecraftRebalanced info server <Updated datapack>
    scoreboard players set $version mire.data 010000
  }
}

function first_join {
  ## Warns the player if he uses a not supportet minecraft version
  execute store result score .temp0 mire.data run data get entity @s DataVersion
  execute unless score .temp0 mire.data matches 3092.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Minecraft Rebalanced","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.18.x to prevent errors.","color":"gold"}]
}

advancement first_join {
  "criteria": {
      "requirement": {
          "trigger": "minecraft:tick"
      }
  },
  "rewards": {
      "function": "mire:core/first_join"
  }
}

advancement mire {
  "display": {
    "title": "Minecraft Rebalanced",
    "description": "<datapack description>",
    "icon": {
      "item": "minecraft:air"
    },
    "announce_to_chat": false,
    "show_toast": false
  },
  "parent": "global:2mal3",
  "criteria": {
    "trigger": {
      "trigger": "minecraft:tick"
    }
  }
}

function uninstall {
  log MinecraftRebalanced info server <Datapack uninstalled>

  # Deletes the scoreboards
  scoreboard objectives remove mire.data
  scoreboard objectives remove mire.schedule
  scoreboard objectives remove 2mal3.debugMode
  scoreboard objectives remove mire.fleeingTime
  scoreboard objectives remove mire.uuid
  # Delete teams
  team remove mire.noCollisionSelf

  # Sends an uninstallation message to all players
  tellraw @a {"text":"Minecraft Rebalanced v1.0.0 by 2mal3 was successfully uninstalled.","color": "green"}

  # Disables the datapack
  datapack disable "file/Minecraft-Rebalanced"
  datapack disable "file/Minecraft-Rebalanced-v1.0.0"
  datapack disable "file/Minecraft-Rebalanced-v1.0.0.zip"
}
