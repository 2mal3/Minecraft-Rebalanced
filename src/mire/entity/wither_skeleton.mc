import ../../../macros/log.mcm


function spawn {
  log MinecraftRebalanced debug entity Processed
  tag @s add mire.witherSkeleton.processed

  # Equips the wither skeleton with a random chance with a bow or a very damaged netherite sword
  execute if predicate mire:utilities/random/33 run item replace entity @s weapon.mainhand with minecraft:bow
  execute if predicate mire:utilities/random/5 run item replace entity @s weapon.mainhand with minecraft:netherite_sword{Damage: 1950}
}
