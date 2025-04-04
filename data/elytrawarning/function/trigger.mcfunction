scoreboard players enable @a elytra_warning 
execute as @a[scores={elytra_warning=1}] run function elytrawarning:activate
execute as @a[scores={elytra_warning=2}] if items entity @s armor.chest minecraft:elytra run function elytrawarning:warn
execute as @a[scores={elytra_warning=3..}] run function elytrawarning:deactivate