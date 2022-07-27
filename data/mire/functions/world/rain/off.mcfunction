# Description: Increase the random tick speed while its raining
# AS: server, AT: server
# Called from function: mire:core/clock/minute
# Datapack by 2mal3 (https://github.com/2mal3)

scoreboard players set %rain mire.data 0

gamerule randomTickSpeed 2
