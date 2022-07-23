
## Modifying found desert pyramids
function modify {
  execute unless block ~16 ~ ~ dispenser{impossible:1b} unless block ~-16 ~ ~ dispenser{impossible:1b} unless block ~ ~ ~16 dispenser{impossible:1b} unless block ~ ~ ~-16 dispenser{impossible:1b} positioned ~ 80 ~ run {
    # Find the hight of the stone pressure plate of the trap
    execute positioned ~10 319 ~10 run {
      execute unless block ~ ~ ~ minecraft:stone_pressure_plate positioned ~ ~-1 ~ run function $block
      execute if block ~ ~ ~ minecraft:stone_pressure_plate positioned ~-1 ~ ~-1 run {
        name random
        # Modify the pressure plates
        # Delete the old pressure plate
        setblock ~1 ~ ~1 minecraft:air
        # Randomy places new ones
        LOOP(3, x) {
          LOOP(3, y) {
            execute if predicate mire:utilities/random/33 run setblock ~<%x%> ~ ~<%y%> minecraft:birch_pressure_plate 
          }
        }
      }
    }

    kill @s
  }
}


## Making the desert pyramid harder to destroy
predicate in_desert_pyramid {
  "condition": "minecraft:location_check",
  "predicate": {
    "structure": "minecraft:desert_pyramid"
  }
}

function player_loop {
  # Gives players in strongholds a bit of minig fatigue to better prevent digging throught the wall
  execute if predicate mire:world/structures/desert_pyramid/in_desert_pyramid run effect give @s minecraft:mining_fatigue 2 0 true
}


## System to find new desert pyramids
## Method originally by CreeperMagnet_ (https://github.com/CreeperMagnet/the-creepers-code/)
function find {
  # Starts checking for a desert temple if a player is in a destert
  execute positioned ~ -64 ~ align xyz unless entity @e[type=minecraft:marker,tag=mire.desertPyramid.checkedArea,distance=..100] run {
    # Spawns a special map with a pointer to a dester pyramid to extract the cordinates out
    loot spawn ~.5 ~ ~.5 loot mire:world/structures/desert_pyramid/desert_pyramid_map
    # Find out if there is already a modifyed destert temple at the found location
    execute as @e[type=item,nbt={Item:{tag:{mire:{id:"desertPyramidMap"}}}},dx=1,dy=1,dz=1,limit=1] at @s run {
      # Creates a marker to remember that for a pyramid tested here
      summon minecraft:marker ~ ~ ~ {Tags:["mire.desertPyramid.checkedArea"]}
      # Reset the temp storage for the following operations
      data remove storage mire:data root.temp

      # Get the coords of the found desert pyramid from the map  
      data modify storage mire:data root.temp.coords set value [0,0]
      execute store result storage mire:data root.temp.coords[0] int 1 run data get entity @s Item.tag.Decorations[0].x
      execute store result storage mire:data root.temp.coords[1] int 1 run data get entity @s Item.tag.Decorations[0].z
      # Gets the number of the already found pyramids
      data modify storage mire:data root.temp.desertPyramids set from storage mire:data root.desertPyramids
      execute unless data storage mire:data root.temp.desertPyramids run scoreboard players set .temp0 mire.data 0
      execute if data storage mire:data root.temp.desertPyramids store result score .temp0 mire.data run data modify storage mire:data root.temp.desertPyramids[] set value 0

      # Get the number of already found and not equal desert pyramids
      data modify storage mire:data root.temp.desertPyramids set from storage mire:data root.desertPyramids
      execute unless data storage mire:data root.temp.desertPyramids run scoreboard players set .temp1 mire.data 0
      execute if data storage mire:data root.temp.desertPyramids store result score .temp1 mire.data run data modify storage mire:data root.temp.desertPyramids[] set from storage mire:data root.temp.coords
      
      # Modify the pyramid if the new coords not belong to an old pyramid
      execute if score .temp0 mire.data = .temp1 mire.data run {
        # Teleport the map to the new pyramid coords
        data modify entity @s Pos[0] set from entity @s Item.tag.Decorations[0].x
        data modify entity @s Pos[2] set from entity @s Item.tag.Decorations[0].z
        # Save the new pyramid coords 
        data modify storage mire:data root.desertPyramids append from storage mire:data root.temp.coords

        # Spawns a desert pyramid marker
        execute at @s unless entity @e[distance=..2,type=minecraft:marker,tag=mire.desertPyramid] run summon minecraft:marker ~ ~ ~ {Tags:["mire.desertPyramid"]}
      }

      # Remove the summoned map
      kill @s
    }
  }
}

predicate in_desert {
  "condition": "minecraft:location_check",
  "predicate": {
    "biome": "minecraft:desert"
  }
}

loot desert_pyramid_map {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:map",
          "functions": [
            {
              "function": "minecraft:exploration_map",
              "destination": "mire:desert_pyramid",
              "decoration": "target_point",
              "zoom": 1,
              "skip_existing_chunks": false
            },
            {
              "function": "minecraft:set_nbt",
              "tag": "{mire:{id:\"desertPyramidMap\"}}"
            }
          ]
        }
      ]
    }
  ]
}
