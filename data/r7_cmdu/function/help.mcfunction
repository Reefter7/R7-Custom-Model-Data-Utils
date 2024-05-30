tellraw @s [" ",\
	{"text":"*-*-*-*-*-*-*-*-*-*-*-*-*","color":"#5593FF"},\
	{"text":"\n "},\
	{"text":"  CMDUtils datapack", "bold": true,"color":"blue"},\
	{"text":"\n "},\
	{"text":" By","italic":true,"color":"green"},\
	{"text":" Refter7  ","color":"gold"},\
	{"text":"Version","italic":true,"color":"green"},\
	{"text":" 0.1","color":"dark_aqua"},\
	{"text":"\n *-*-*-*-*-*-*-*-*-*-*-*-*","color":"#5593FF"},\
	{"text":"\n\n "},\
	{"text":"Datapack Settings","underlined":true,"color":"dark_aqua","hoverEvent":{"action":"show_text",\
		"contents":{"text":"Enable/disable features in the datapack","color":"gold"}}},\
	{"text":"\n"}\
]

##/trigger r7_custom_model_data set <value>
#enabled
execute if score r7_cmdu_cmd_trigger r7_options matches 1 run tellraw @s [" ",\
	{"text":"\u2714","color":"green"},\
	{"text":" "},\
	{"text":"/trigger r7_custommodeldata set <value>","hoverEvent":{"action":"show_text",\
		"contents":"this command sets the minecraft:custom_model_data attribute of the item in the initiator's mainhand."}},\
	{"text":" "},\
	{"text":"[DISABLE] ","color":"dark_red","clickEvent":{"action":"run_command",\
			"value":"/function r7_cmdu:option/disable_cmd"}, \
		"hoverEvent":{"action":"show_text",\
			"contents":"click to disable this command"}}\
]
#disabled
execute if score r7_cmdu_cmd_trigger r7_options matches 0 run tellraw @s [" ",\
	{"text":"\u274c","color":"dark_red"},\
	{"text":" "},\
	{"text":"/trigger r7_custommodeldata set <value>","hoverEvent":{"action":"show_text",\
		"contents":"this command sets the minecraft:custom_model_data attribute of the item in the initiator's mainhand."}},\
	{"text":" "},\
	{"text":"[ENABLE]","color":"green","clickEvent":{"action":"run_command",\
			"value":"/function r7_cmdu:option/enable_cmd"}, \
		"hoverEvent":{"action":"show_text",\
			"contents":"click to enable this command"}}\
]


##/trigger r7_atune
#enabled
execute if score r7_cmdu_attune_trigger r7_options matches 1 run tellraw @s [" ",\
	{"text":"\u2714","color":"green"},\
	{"text":" "},\
	{"text":"/trigger r7_attune ","hoverEvent":{"action":"show_text",\
		"contents":"This command attunes the item in the initiator's hand to the initiator. \
			This makes the item unstackable with other items of the same type."}},\
	{"text":"[DISABLE]","color":"dark_red","clickEvent":{"action":"run_command",\
			"value":"/function r7_cmdu:option/disable_attune"}, \
		"hoverEvent":{"action":"show_text",\
			"contents":"click to disable this command"}}\
]

#disabled
execute if score r7_cmdu_attune_trigger r7_options matches 0 run tellraw @s [" ",\
	{"text":"\u274c","color":"dark_red"},\
	{"text":" "},\
	{"text":"/trigger r7_attune ","hoverEvent":{"action":"show_text",\
		"contents":"This command attunes the item in the initiator's hand to the initiator. \
			This makes the item unstackable with other items of the same type."}},\
	{"text":"[ENABLE]","color":"green","clickEvent":{"action":"run_command",\
			"value":"/function r7_cmdu:option/enable_attune"}, \
		"hoverEvent":{"action":"show_text",\
			"contents":"click to enable this command"}}\
]


##final line
tellraw @s ["\n ", \
	{"text":"to give a player permission to use a trigger, use \n ", "color": "aqua"},\
	{"text":"/scoreboard players enable <selector> <trigger>\n ", "color": "gray", "clickEvent": {"action": "suggest_command",\
			"value": "/scoreboard players enable "}, \
		"hoverEvent": {"action": "show_text",\
			"contents":"Put in commandline"}},\
	{"text":"\u2b50 This permission cannot be removed \u2b50\n", "bold":true, "color": "dark_red"},\
	{"text":"*-*-*-*-*-*-*-*-*-*-*-*-*","color":"#5593FF"}]

# execute unless score r7_cmdu_cmd_trigger r7_options matches 0 run 