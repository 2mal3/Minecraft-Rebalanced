import ../../../../macros/wait.mcm


function block {
  advancement revoke @s only mire:item/shield/no_sneak/block

  # Some fancy effects
  execute positioned ^ ^ ^0.8 run particle minecraft:crit ~ ~1.1 ~ 0 0 0 0.3 14
  playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 0.5

  # Stuns the players attack for a second
  effect give @s minecraft:weakness 1 5 true
  effect give @s minecraft:mining_fatigue 1 50 true

  # Repairs the shield a bit
  item modify entity @s weapon.offhand mire:item/shield/no_sneak/reduce_damage

  # Gives a bit knokback
  # Summons a massive amount of magma cubes for one tick to make horizontal knockback
  execute positioned ^ ^ ^0.1 align y run {
    LOOP(30) {
      summon minecraft:magma_cube ~ ~0.5 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Size:0,DeathLootTable:"minecraft:empty",Team:"mire.noCollisionSelf",Tags:["mire.knockback"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
    }
  }
  execute as @e[type=minecraft:magma_cube,distance=..1,tag=mire.knockback] run wait as @e[type=minecraft:magma_cube,tag=mire.knockback] in mire.schedule for 1t {
    tp @s ~ -1000 ~
  }
  # Gives the player for one tick levitation to make vertical knockback
  effect give @s minecraft:levitation 1 30 true
  wait as @a in mire.schedule for 1t {
    effect clear @s minecraft:levitation
  }
}

modifier reduce_damage {
  "function": "minecraft:set_damage",
  "damage": 0.012,
  "add": true
}

advancement block {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:entity_hurt_player",
      "conditions": {
        "player": {
          "flags": {
            "is_sneaking": false
          }
        },
        "damage": {
          "dealt": {
            "min": 1,
            "max": 255
          },
          "blocked": true,
          "type": {
            "is_magic": false,
            "is_projectile": false
          }
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/shield/no_sneak/block"
  }
}
