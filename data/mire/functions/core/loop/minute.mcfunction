# Description: Main command loop every minute
# AS: server, AT: server
# Called from functions: mire:core/load, mire:core/loop/minute
# Datapack by 2mal3 (https://github.com/2mal3)

schedule function mire:core/loop/minute 60s replace

# Increase the random tick speed while its raining
execute if score %rain mire.data matches 1 unless predicate mire:world/is_raining run function mire:world/rain/off
execute if score %rain mire.data matches 0 if predicate mire:world/is_raining run function mire:world/rain/on
