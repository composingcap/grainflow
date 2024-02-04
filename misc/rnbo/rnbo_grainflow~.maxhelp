{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 985.0, 586.0, 1082.0, 597.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "Minimal-1",
		"subpatcher_template" : "minimal",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"outlettype" : [ "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "rnbo",
						"rect" : [ 238.0, 562.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"title" : "untitled",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 87.0, 187.0, 297.0, 23.0 ],
									"rnbo_classname" : "p",
									"rnbo_extra_attributes" : 									{
										"polyphony" : -1.0,
										"args" : [  ],
										"receivemode" : "local",
										"voicecontrol" : "simple",
										"exposevoiceparams" : 0,
										"notecontroller" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "p_obj-1",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"nvoices" : 											{
												"attrOrProp" : 1,
												"digest" : "nvoices",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"target" : 											{
												"attrOrProp" : 1,
												"digest" : "target",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"mute" : 											{
												"attrOrProp" : 1,
												"digest" : "mute",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"in2" : 											{
												"attrOrProp" : 1,
												"digest" : "in2",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"in3" : 											{
												"attrOrProp" : 1,
												"digest" : "in3",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"in4" : 											{
												"attrOrProp" : 1,
												"digest" : "in4",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"__probingout1" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout2" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout2",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout3" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout3",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout4" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout4",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout5" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout5",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout6" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout6",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout7" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout7",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout8" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout8",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout9" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout9",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout10" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout10",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout11" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout11",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout12" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout12",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout13" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout13",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout14" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout14",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout15" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout15",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout16" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout16",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout17" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout17",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout18" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout18",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout19" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout19",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout20" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout20",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout21" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout21",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout22" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout22",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout23" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout23",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout24" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout24",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout25" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout25",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout26" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout26",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout27" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout27",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout28" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout28",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout29" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout29",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout30" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout30",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout31" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout31",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout32" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout32",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout33" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout33",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout34" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout34",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout35" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout35",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout36" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout36",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout37" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout37",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout38" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout38",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout39" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout39",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout40" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout40",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout41" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout41",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout42" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout42",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout43" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout43",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout44" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout44",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout45" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout45",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout46" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout46",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout47" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout47",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout48" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout48",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout49" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout49",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout50" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout50",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout51" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout51",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout52" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout52",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout53" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout53",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout54" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout54",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout55" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout55",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout56" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout56",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout57" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout57",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout58" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout58",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout59" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout59",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout60" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout60",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout61" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout61",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout62" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout62",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout63" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout63",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"__probingout64" : 											{
												"attrOrProp" : 1,
												"digest" : "__probingout64",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "signal"
											}
,
											"out1" : 											{
												"attrOrProp" : 1,
												"digest" : "out1",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"out2" : 											{
												"attrOrProp" : 1,
												"digest" : "out2",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "signal"
											}
,
											"voicestatus" : 											{
												"attrOrProp" : 1,
												"digest" : "voicestatus",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "list"
											}
,
											"activevoices" : 											{
												"attrOrProp" : 1,
												"digest" : "activevoices",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number"
											}
,
											"polyphony" : 											{
												"attrOrProp" : 2,
												"digest" : "Polyphony of the subpatcher.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "-1"
											}
,
											"exposevoiceparams" : 											{
												"attrOrProp" : 2,
												"digest" : "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}
,
											"title" : 											{
												"attrOrProp" : 2,
												"digest" : "Title of the subpatcher",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "rnbo file to load",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"voicecontrol" : 											{
												"attrOrProp" : 2,
												"digest" : "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "simple", "user" ],
												"type" : "enum",
												"defaultValue" : "simple"
											}
,
											"notecontroller" : 											{
												"attrOrProp" : 2,
												"digest" : "DEPRECATED. Use voicecontrol instead.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"receivemode" : 											{
												"attrOrProp" : 2,
												"digest" : "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"enum" : [ "local", "compensated" ],
												"type" : "enum",
												"defaultValue" : "local"
											}
,
											"args" : 											{
												"attrOrProp" : 2,
												"digest" : "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "in1",
												"displayName" : "grainclock",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : "signal",
												"digest" : "in2",
												"displayName" : "normalized sample position",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in3",
												"type" : "signal",
												"digest" : "in3",
												"displayName" : "transpose in semitones",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in4",
												"type" : "signal",
												"digest" : "in4",
												"displayName" : "amplitude modulation",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "out1",
												"type" : "signal",
												"digest" : "out1",
												"displayName" : "",
												"docked" : 0
											}
, 											{
												"name" : "out2",
												"type" : "signal",
												"digest" : "out2",
												"displayName" : "",
												"docked" : 0
											}
 ],
										"helpname" : "patcher",
										"aliasOf" : "rnbo",
										"classname" : "p",
										"operator" : 0,
										"versionId" : 2039458657,
										"changesPatcherIO" : 0
									}
,
									"text" : "p @file grainflow~"
								}

							}
 ],
						"lines" : [  ],
						"default_bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
						"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
						"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
						"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
						"bgfillcolor_type" : "color",
						"bgfillcolor_color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
						"bgfillcolor_angle" : 270.0,
						"bgfillcolor_proportion" : 0.39,
						"bgfillcolor_autogradient" : 0.0
					}
,
					"patching_rect" : [ 178.0, 262.0, 40.0, 23.0 ],
					"rnboattrcache" : 					{
						"p_obj-1/nvoices" : 						{
							"label" : "nvoices",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-1/grainflow.voice/density" : 						{
							"label" : "density",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-1/grainflow.voice/delay" : 						{
							"label" : "delay",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-1/grainflow.voice/delayRandom" : 						{
							"label" : "delayRandom",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-1/grainflow.voice/transpose" : 						{
							"label" : "transpose",
							"isEnum" : 0,
							"parsestring" : ""
						}
,
						"p_obj-1/grainflow.voice/transposeRandom" : 						{
							"label" : "transposeRandom",
							"isEnum" : 0,
							"parsestring" : ""
						}

					}
,
					"rnboversion" : "1.2.4",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "55a2d7d7-b5a9-11ee-97d7-a8a1598428b5"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__presetid" : "55a2d7d7-b5a9-11ee-97d7-a8a1598428b5",
							"__sps" : 							{
								"p_obj-1" : 								{
									"nvoices" : 									{
										"value" : 0.0
									}
,
									"__sps" : 									{
										"grainflow.voice" : [ 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
, 											{
												"density" : 												{
													"value" : 1.0
												}
,
												"delay" : 												{
													"value" : 0.0
												}
,
												"delayRandom" : 												{
													"value" : 0.0
												}
,
												"transpose" : 												{
													"value" : 0.0
												}
,
												"transposeRandom" : 												{
													"value" : 0.0
												}

											}
 ]
									}

								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "untitled",
									"origin" : "55a2d7d7-b5a9-11ee-97d7-a8a1598428b5",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "55a2d7d7-b5a9-11ee-97d7-a8a1598428b5",
										"__sps" : 										{
											"p_obj-1" : 											{
												"nvoices" : 												{
													"value" : 0.0
												}
,
												"__sps" : 												{
													"grainflow.voice" : [ 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
, 														{
															"density" : 															{
																"value" : 1.0
															}
,
															"delay" : 															{
																"value" : 0.0
															}
,
															"delayRandom" : 															{
																"value" : 0.0
															}
,
															"transpose" : 															{
																"value" : 0.0
															}
,
															"transposeRandom" : 															{
																"value" : 0.0
															}

														}
 ]
												}

											}

										}

									}
,
									"fileref" : 									{
										"name" : "untitled",
										"filename" : "untitled_20240117.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "b564728b0f2a0e181907727ca368f6a9"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~",
					"varname" : "rnbo~"
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "untitled_20240117.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "Minimal",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"editing_bgcolor" : [ 0.956862745098039, 0.956862745098039, 0.956862745098039, 1.0 ],
					"elementcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 1.0 ],
					"fontface" : [ 0 ],
					"fontname" : [ "Futura Medium" ],
					"fontsize" : [ 10.0 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Minimal-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}
,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"editing_bgcolor" : [ 0.956862745098039, 0.956862745098039, 0.956862745098039, 1.0 ],
					"elementcolor" : [ 0.741176470588235, 0.741176470588235, 0.741176470588235, 1.0 ],
					"fontface" : [ 0 ],
					"fontname" : [ "Lato" ],
					"fontsize" : [ 12.0 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
