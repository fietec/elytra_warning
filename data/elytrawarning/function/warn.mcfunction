execute as @s store result score @s elytra_damage run data get entity @s equipment.chest.components.minecraft:damage 
scoreboard players set @s elytra_durability 432
scoreboard players operation @s elytra_durability -= @s elytra_damage
execute as @s if score @s elytra_durability <= @s elytra_durability_threshold run title @s actionbar [{"text": "Your elytra is about to break: ", "color": "red"}, {"score": {"name": "*", "objective": "elytra_durability", "color": "red"}}, {"text": "/432", "color": "red"}]
execute as @s if score @s elytra_durability matches 1 run title @s actionbar {"text": "Your elytra is broken", "color": "red"}