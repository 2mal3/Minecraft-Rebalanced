import ../../../macros/log.mcm


function spawn {
  log MinecraftRebalanced debug entity <Processed>
  tag @s add mire.skeleton.processed

  attribute @s generic.max_health base set 16
}
