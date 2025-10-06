#player's current selected skill
scoreboard objectives add skillsystem.playermapping dummy
#ensure all players have a  selected skill, 0 is 'no skill'
execute as @a unless score @s skillsystem.playermapping matches 1.. run scoreboard players set @s skillsystem.playermapping 0
#map from skill name to skill number in strage
scoreboard objectives add skillsystem.namemapping dummy
scoreboard players set skillsystem.noskill skillsystem.namemapping 0
#add new skills here as created


#skill cooldown in ticks
scoreboard objectives add skillsystem.skillcooldown dummy
#skill storage
data modify storage skillstorage skilllist[0] set value {"name":"noskill"}
