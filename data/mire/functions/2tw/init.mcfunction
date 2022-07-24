# Description: Configures the 2mal3s Tweaks Datapack if its available
# AS: server, AT: server
# Called from function tag: 2tw:api/init
# Datapack by 2mal3 (https://github.com/2mal3)

execute unless score $2tw.init mire.data matches 1 run function mire:2tw/configure
