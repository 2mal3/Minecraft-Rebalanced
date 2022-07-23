
function hit {
  advancement revoke @s only mire:entity/squid/hit

  execute if block ~ ~ ~ minecraft:water[level=0] at @e[type=minecraft:squid,sort=nearest,limit=1,tag=!global.ignore] positioned ^ ^ ^-3.5 run effect give @s[distance=..4.5] minecraft:blindness 4 0 false
}

advancement hit {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:player_hurt_entity",
      "conditions": {
        "entity": {
          "type": "minecraft:squid"
        }
      }
    }
  },
  "rewards": {
    "function": "mire:entity/squid/hit"
  }
}
