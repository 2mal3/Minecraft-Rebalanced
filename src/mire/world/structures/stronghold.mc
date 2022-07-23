
predicate in_stronghold {
  "condition": "minecraft:location_check",
  "predicate": {
    "structure": "minecraft:stronghold"
  }
}


function player_loop {
  # Gives players in strongholds a bit of minig fatigue to better prevent digging throught the wall
  execute if predicate mire:world/structures/stronghold/in_stronghold run effect give @s minecraft:mining_fatigue 2 0 true
}
