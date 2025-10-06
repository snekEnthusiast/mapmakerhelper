tellraw @p [{"text":"welcome th the upgrades shop"}]
#resistances shop
execute unless score @p resistances matches 1.. run tellraw @p {"text":"upgrade effect resistances 0->1 (3 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/1"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to poison, wither"}]}}
execute if score @p resistances matches 1 run tellraw @p {"text":"upgrade effect resistances 1->2 (3 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/2"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to slowness, weakness, mining fatigue"}]}}
execute if score @p resistances matches 2 run tellraw @p {"text":"upgrade effect resistances 1->2 (2 lvls)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/resistance/3"},"hoverEvent":{"action":"show_text","value":[{"text":"grant resistance to blindness, darkness, nausea"}]}}
execute if score @p resistances matches 3.. run tellraw @p {"text":"upgrade effect resistances 3(max)->"}

#attack shop
execute unless score @p attackkup matches 1.. run tellraw @p {"text":"upgrade attack 0->1 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/1"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 1 run tellraw @p {"text":"upgrade attack 1->2 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/2"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 2 run tellraw @p {"text":"upgrade attack 2->3 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/3"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 3 run tellraw @p {"text":"upgrade attack 3->4 (2 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/4"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 4 run tellraw @p {"text":"upgrade attack 4->5 (3 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/5"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 5 run tellraw @p {"text":"upgrade attack 5->6 (4 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/6"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 6 run tellraw @p {"text":"upgrade attack 6->7 (5 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/7"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 7 run tellraw @p {"text":"upgrade attack 7->8 (7 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/8"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 8 run tellraw @p {"text":"upgrade attack 8->9 (8 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/9"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 9 run tellraw @p {"text":"upgrade attack 9->10 (10 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/attack/10"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base atk by 1"}]}}
execute if score @p attackkup matches 10.. run tellraw @p {"text":"upgrade attack 10(max)->"}

#at shop
execute unless score @p toughnessup matches 1.. run tellraw @p {"text":"upgrade armor toughness 0->1 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/armor_toughness/1"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base armor toughness by 1"}]}}
execute if score @p toughnessup matches 1 run tellraw @p {"text":"upgrade armor toughnes 1->2 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/armor_toughness/2"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base armor toughness by 1"}]}}
execute if score @p toughnessup matches 2 run tellraw @p {"text":"upgrade armor toughnes 2->3 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/armor_toughness/3"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base armor toughness by 1"}]}}
execute if score @p toughnessup matches 3 run tellraw @p {"text":"upgrade armor toughnes 3->4 (1 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/armor_toughness/4"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base armor toughness by 1"}]}}
execute if score @p toughnessup matches 4.. run tellraw @p {"text":"upgrade armor toughness 4(max)->"}

#health shop
execute unless score @p attackkup matches 1.. run tellraw @p {"text":"upgrade max health 0->1 (3 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/1"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 1 run tellraw @p {"text":"upgrade max health 1->2 (3 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/2"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 2 run tellraw @p {"text":"upgrade max health 2->3 (3 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/3"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 3 run tellraw @p {"text":"upgrade max health 3->4 (4 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/4"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 4 run tellraw @p {"text":"upgrade max health 4->5 (4 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/5"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 5 run tellraw @p {"text":"upgrade max health 5->6 (4 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/6"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 6 run tellraw @p {"text":"upgrade max health 6->7 (5 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/7"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 7 run tellraw @p {"text":"upgrade max health 7->8 (5 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/8"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 8 run tellraw @p {"text":"upgrade max health 8->9 (5 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/9"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 9 run tellraw @p {"text":"upgrade max health 9->10 (6 lvl)","clickEvent":{"action":"run_command","value":"/function upgrades:upgrade/health/10"},"hoverEvent":{"action":"show_text","value":[{"text":"increase base max health by 1"}]}}
execute if score @p attackkup matches 10.. run tellraw @p {"text":"upgrade max health 10(max)->"}

