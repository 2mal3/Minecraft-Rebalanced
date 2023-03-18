
## Load
function ./load:
    scoreboard objectives add mire.data dummy

    execute unless score %installed mire.data matches 1 run function ./install
    execute if score %installed mire.data matches 1 unless score $version mire.data matches ctx.meta.version run function ./update


function_tag minecraft:load:
    values:
        - "mire:core/load"


## Install
function ./install:
    scoreboard players set %installed mire.data 1

    # Add scoreboards
    scoreboard objectives add mire.data dummy
    # Set the version in format: xx.xx.xx
    scoreboard players set $version mire.data ctx.meta.version

    # Sent installation message after 4 seconds
    schedule function ./send_message 4s replace:
      tellraw @a:
          text: f"Installed {ctx.project_name} {ctx.project_version} from {ctx.project_author}!"
          color: "green"


## First Join
function ./first_join:
    execute store result score .temp_0 mire.data run data get entity @s DataVersion
    execute unless score .temp_0 mire.data matches 3337..:
        tellraw @s [
            {"text": "[", "color": "gray"},
            {"text": f"{ctx.project_name}", "color": "red", "bold": true},
            {"text": "]: ", "color": "gray"},
            {
                "text": "You are using the incorrect Minecraft version. Please check the website.",
                "color": "red",
                "bold": true
            }
        ]

advancement ./first_join {
    "criteria": {
        "requirement": {
            "trigger": "minecraft:tick"
        }
    },
    "rewards": {
        "function": "mire:core/first_join"
    }
}


## Uninstall
function ./uninstall:
    scoreboard objectives remove mire.data

    tellraw @a:
        text: f"Uninstalled {ctx.project_name} {ctx.project_version} from {ctx.project_author}!"
        color: "green"

    datapack disable "file/Minecraft-Rebalanced"
    datapack disable "file/Minecraft-Rebalanced.zip"
