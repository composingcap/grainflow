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
		"rect" : [ 900.0, 542.0, 1082.0, 597.0 ],
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
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 109.0, 284.0, 34.0, 23.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 467.0, 231.0, 102.0, 23.0 ],
					"text" : "buffer~ buf anton"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outletInfo" : 					{
						"IOInfo" : [ 							{
								"type" : "signal",
								"index" : 1,
								"tag" : "out1",
								"comment" : ""
							}
, 							{
								"type" : "signal",
								"index" : 2,
								"tag" : "out2",
								"comment" : ""
							}
 ]
					}
,
					"outlettype" : [ "signal", "signal", "list" ],
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
						"rect" : [ 1533.0, 638.0, 1192.0, 480.0 ],
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
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 505.0, 300.0, 202.0, 23.0 ],
									"rnbo_classname" : "buffer~",
									"rnbo_extra_attributes" : 									{
										"samplerate" : 0.0,
										"fill" : "",
										"file" : "",
										"type" : ""
									}
,
									"rnbo_serial" : 10,
									"rnbo_uniqueid" : "buffer~_obj-14",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"info" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang to report buffer information.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "bang"
											}
,
											"sizeout" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"chanout" : 											{
												"attrOrProp" : 1,
												"digest" : "Number of Channels",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"srout" : 											{
												"attrOrProp" : 1,
												"digest" : "Sample rate",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"size" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [ "samples" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"samples" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 1,
												"aliasOf" : "size",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"sizems" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 0,
												"aliases" : [ "ms" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"ms" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 1,
												"aliasOf" : "sizems",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear the contents of the buffer",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalize" : 											{
												"attrOrProp" : 1,
												"digest" : "Find Maximum and normalize to the value given.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0.995"
											}
,
											"channels" : 											{
												"attrOrProp" : 1,
												"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 3,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the data buffer",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"mandatory" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "File name/path or URL to load into buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"url" : 											{
												"attrOrProp" : 2,
												"digest" : "The name of an audio file to load",
												"isalias" : 1,
												"aliasOf" : "file",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"type" : 											{
												"attrOrProp" : 2,
												"digest" : "Type of Data (float32, float64)",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"samplerate" : 											{
												"attrOrProp" : 2,
												"digest" : "Sample rate",
												"defaultarg" : 4,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"fill" : 											{
												"attrOrProp" : 2,
												"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"external" : 											{
												"attrOrProp" : 2,
												"digest" : "Await data from the outside world.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"doNotShowInMaxInspector" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "info",
												"type" : "bang",
												"digest" : "Bang to report buffer information.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "sizeout",
												"type" : "number",
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"docked" : 0
											}
, 											{
												"name" : "chanout",
												"type" : "number",
												"digest" : "Number of Channels",
												"docked" : 0
											}
, 											{
												"name" : "srout",
												"type" : "number",
												"digest" : "Sample rate",
												"docked" : 0
											}
 ],
										"helpname" : "buffer~",
										"aliasOf" : "data",
										"classname" : "buffer~",
										"operator" : 0,
										"versionId" : 51756089,
										"changesPatcherIO" : 0
									}
,
									"text" : "buffer~ grainflowState vectorsize 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 612.0, 217.0, 196.0, 37.0 ],
									"presentation_linecount" : 2,
									"rnbo_classname" : "buffer~",
									"rnbo_extra_attributes" : 									{
										"samplerate" : 0.0,
										"file" : "",
										"type" : ""
									}
,
									"rnbo_serial" : 8,
									"rnbo_uniqueid" : "buffer~_obj-3",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"info" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang to report buffer information.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "bang"
											}
,
											"sizeout" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"chanout" : 											{
												"attrOrProp" : 1,
												"digest" : "Number of Channels",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"srout" : 											{
												"attrOrProp" : 1,
												"digest" : "Sample rate",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"size" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [ "samples" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"samples" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 1,
												"aliasOf" : "size",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"sizems" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 0,
												"aliases" : [ "ms" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"ms" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 1,
												"aliasOf" : "sizems",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear the contents of the buffer",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalize" : 											{
												"attrOrProp" : 1,
												"digest" : "Find Maximum and normalize to the value given.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0.995"
											}
,
											"channels" : 											{
												"attrOrProp" : 1,
												"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 3,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the data buffer",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"mandatory" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "File name/path or URL to load into buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"url" : 											{
												"attrOrProp" : 2,
												"digest" : "The name of an audio file to load",
												"isalias" : 1,
												"aliasOf" : "file",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"type" : 											{
												"attrOrProp" : 2,
												"digest" : "Type of Data (float32, float64)",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"samplerate" : 											{
												"attrOrProp" : 2,
												"digest" : "Sample rate",
												"defaultarg" : 4,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"fill" : 											{
												"attrOrProp" : 2,
												"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"external" : 											{
												"attrOrProp" : 2,
												"digest" : "Await data from the outside world.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"doNotShowInMaxInspector" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "info",
												"type" : "bang",
												"digest" : "Bang to report buffer information.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "sizeout",
												"type" : "number",
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"docked" : 0
											}
, 											{
												"name" : "chanout",
												"type" : "number",
												"digest" : "Number of Channels",
												"docked" : 0
											}
, 											{
												"name" : "srout",
												"type" : "number",
												"digest" : "Sample rate",
												"docked" : 0
											}
 ],
										"helpname" : "buffer~",
										"aliasOf" : "data",
										"classname" : "buffer~",
										"operator" : 0,
										"versionId" : 51756089,
										"changesPatcherIO" : 0
									}
,
									"text" : "buffer~ env 4096 @external 1 @fill 1-(cos(x*2*pi)*0.5+0.5)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 453.0, 224.0, 135.0, 23.0 ],
									"rnbo_classname" : "buffer~",
									"rnbo_extra_attributes" : 									{
										"samplerate" : 0.0,
										"fill" : "",
										"file" : "",
										"type" : ""
									}
,
									"rnbo_serial" : 7,
									"rnbo_uniqueid" : "buffer~_obj-2",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"info" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang to report buffer information.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "bang"
											}
,
											"sizeout" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"chanout" : 											{
												"attrOrProp" : 1,
												"digest" : "Number of Channels",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"srout" : 											{
												"attrOrProp" : 1,
												"digest" : "Sample rate",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"size" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [ "samples" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"samples" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 1,
												"aliasOf" : "size",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"sizems" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 0,
												"aliases" : [ "ms" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"ms" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 1,
												"aliasOf" : "sizems",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear the contents of the buffer",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalize" : 											{
												"attrOrProp" : 1,
												"digest" : "Find Maximum and normalize to the value given.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0.995"
											}
,
											"channels" : 											{
												"attrOrProp" : 1,
												"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 3,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the data buffer",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"mandatory" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "File name/path or URL to load into buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"url" : 											{
												"attrOrProp" : 2,
												"digest" : "The name of an audio file to load",
												"isalias" : 1,
												"aliasOf" : "file",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"type" : 											{
												"attrOrProp" : 2,
												"digest" : "Type of Data (float32, float64)",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"samplerate" : 											{
												"attrOrProp" : 2,
												"digest" : "Sample rate",
												"defaultarg" : 4,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"fill" : 											{
												"attrOrProp" : 2,
												"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"external" : 											{
												"attrOrProp" : 2,
												"digest" : "Await data from the outside world.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"doNotShowInMaxInspector" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "info",
												"type" : "bang",
												"digest" : "Bang to report buffer information.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "sizeout",
												"type" : "number",
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"docked" : 0
											}
, 											{
												"name" : "chanout",
												"type" : "number",
												"digest" : "Number of Channels",
												"docked" : 0
											}
, 											{
												"name" : "srout",
												"type" : "number",
												"digest" : "Sample rate",
												"docked" : 0
											}
 ],
										"helpname" : "buffer~",
										"aliasOf" : "data",
										"classname" : "buffer~",
										"operator" : 0,
										"versionId" : 51756089,
										"changesPatcherIO" : 0
									}
,
									"text" : "buffer~ buf @external 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 253.5, 347.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "out~_obj-13",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 2",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 2",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 374499139,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 119.0, 347.0, 43.0, 23.0 ],
									"rnbo_classname" : "out~",
									"rnbo_extra_attributes" : 									{
										"comment" : "",
										"meta" : ""
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "out~_obj-12",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "signal sent to outlet with index 1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "signal"
											}
,
											"index" : 											{
												"attrOrProp" : 2,
												"digest" : "outlet number",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"mandatory" : 1
											}
,
											"comment" : 											{
												"attrOrProp" : 2,
												"digest" : "mouse over comment",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"meta" : 											{
												"attrOrProp" : 2,
												"digest" : "A JSON formatted string containing metadata for use by the exported code",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"defaultValue" : "",
												"label" : "Metadata",
												"displayorder" : 3
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "signal",
												"digest" : "signal sent to outlet with index 1",
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "out~",
										"aliasOf" : "out~",
										"classname" : "out~",
										"operator" : 0,
										"versionId" : 374499139,
										"changesPatcherIO" : 1
									}
,
									"text" : "out~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 158.0, 144.0, 43.0, 23.0 ],
									"rnbo_classname" : "noise~",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "noise~_obj-11",
									"text" : "noise~"
								}

							}
, 							{
								"box" : 								{
									"format" : 0,
									"id" : "obj-10",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 317.0, 40.0, 50.0, 23.0 ],
									"rnbo_classname" : "number",
									"rnbo_extra_attributes" : 									{
										"minimum" : "<none>",
										"maximum" : "<none>",
										"initialFormat" : "integer",
										"order" : "",
										"preset" : 0
									}
,
									"rnbo_serial" : 2,
									"rnbo_uniqueid" : "number_obj-10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 98.0, 67.0, 23.0 ],
									"rnbo_classname" : "set",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "set_obj-8",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "attribute/param to control",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"mandatory" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "input",
												"type" : [ "bang", "number", "list", "signal" ],
												"digest" : "attribute or parameter value (bang, number, list)",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "output",
												"type" : [ "bang", "number", "list", "signal" ],
												"digest" : "connect to first inlet of gen or subpatcher",
												"docked" : 0
											}
 ],
										"helpname" : "set",
										"aliasOf" : "set",
										"classname" : "set",
										"operator" : 0,
										"versionId" : 2121358407,
										"changesPatcherIO" : 0
									}
,
									"text" : "set nvoices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 114.0, 119.0, 61.0, 23.0 ],
									"rnbo_classname" : "phasor~",
									"rnbo_extra_attributes" : 									{
										"lock" : 0.0
									}
,
									"rnbo_serial" : 3,
									"rnbo_uniqueid" : "phasor~_obj-6",
									"text" : "phasor~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 453.0, 170.0, 212.0, 23.0 ],
									"rnbo_classname" : "buffer~",
									"rnbo_extra_attributes" : 									{
										"samplerate" : 0.0,
										"fill" : "",
										"file" : "",
										"type" : ""
									}
,
									"rnbo_serial" : 9,
									"rnbo_uniqueid" : "buffer~_obj-7",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"info" : 											{
												"attrOrProp" : 1,
												"digest" : "Bang to report buffer information.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "bang"
											}
,
											"sizeout" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"chanout" : 											{
												"attrOrProp" : 1,
												"digest" : "Number of Channels",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"srout" : 											{
												"attrOrProp" : 1,
												"digest" : "Sample rate",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"outlet" : 1,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"size" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 0,
												"aliases" : [ "samples" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"samples" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 2,
												"isalias" : 1,
												"aliasOf" : "size",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"sizems" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 0,
												"aliases" : [ "ms" ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"ms" : 											{
												"attrOrProp" : 1,
												"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
												"isalias" : 1,
												"aliasOf" : "sizems",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"clear" : 											{
												"attrOrProp" : 1,
												"digest" : "Clear the contents of the buffer",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"normalize" : 											{
												"attrOrProp" : 1,
												"digest" : "Find Maximum and normalize to the value given.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0.995"
											}
,
											"channels" : 											{
												"attrOrProp" : 1,
												"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
												"defaultarg" : 3,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "1"
											}
,
											"name" : 											{
												"attrOrProp" : 2,
												"digest" : "Name of the data buffer",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"mandatory" : 1
											}
,
											"file" : 											{
												"attrOrProp" : 2,
												"digest" : "File name/path or URL to load into buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"url" : 											{
												"attrOrProp" : 2,
												"digest" : "The name of an audio file to load",
												"isalias" : 1,
												"aliasOf" : "file",
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"type" : 											{
												"attrOrProp" : 2,
												"digest" : "Type of Data (float32, float64)",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"samplerate" : 											{
												"attrOrProp" : 2,
												"digest" : "Sample rate",
												"defaultarg" : 4,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "number",
												"defaultValue" : "0"
											}
,
											"fill" : 											{
												"attrOrProp" : 2,
												"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol"
											}
,
											"external" : 											{
												"attrOrProp" : 2,
												"digest" : "Await data from the outside world.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"doNotShowInMaxInspector" : 1
											}

										}
,
										"inputs" : [ 											{
												"name" : "info",
												"type" : "bang",
												"digest" : "Bang to report buffer information.",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [ 											{
												"name" : "sizeout",
												"type" : "number",
												"digest" : "Size in Samples",
												"defaultarg" : 2,
												"docked" : 0
											}
, 											{
												"name" : "chanout",
												"type" : "number",
												"digest" : "Number of Channels",
												"docked" : 0
											}
, 											{
												"name" : "srout",
												"type" : "number",
												"digest" : "Sample rate",
												"docked" : 0
											}
 ],
										"helpname" : "buffer~",
										"aliasOf" : "data",
										"classname" : "buffer~",
										"operator" : 0,
										"versionId" : 51756089,
										"changesPatcherIO" : 0
									}
,
									"text" : "buffer~ grainflowOutput vectorsize 64"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "rnbo",
										"rect" : [ 1064.0, 807.0, 1254.0, 480.0 ],
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
										"title" : "proccessGrains",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 568.0, 43.0, 28.0, 23.0 ],
													"rnbo_classname" : "in",
													"rnbo_extra_attributes" : 													{
														"comment" : "",
														"meta" : ""
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "in_obj-6",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"index" : 															{
																"attrOrProp" : 2,
																"digest" : "inlet number",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"mandatory" : 1
															}
,
															"comment" : 															{
																"attrOrProp" : 2,
																"digest" : "mouse over comment",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"meta" : 															{
																"attrOrProp" : 2,
																"digest" : "A JSON formatted string containing metadata for use by the exported code",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"defaultValue" : "",
																"label" : "Metadata",
																"displayorder" : 3
															}

														}
,
														"inputs" : [  ],
														"outputs" : [ 															{
																"name" : "out1",
																"type" : [ "bang", "number", "list" ],
																"digest" : "value from inlet with index 2",
																"displayName" : "",
																"docked" : 0
															}
 ],
														"helpname" : "in",
														"aliasOf" : "in",
														"classname" : "in",
														"operator" : 0,
														"versionId" : 1219109108,
														"changesPatcherIO" : 1
													}
,
													"text" : "in 2"
												}

											}
, 											{
												"box" : 												{
													"format" : 0,
													"id" : "obj-21",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 596.0, 138.0, 50.0, 23.0 ],
													"rnbo_classname" : "number",
													"rnbo_extra_attributes" : 													{
														"minimum" : "<none>",
														"maximum" : "<none>",
														"initialFormat" : "integer",
														"order" : "",
														"preset" : 0
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "number_obj-21"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 568.0, 90.0, 29.5, 23.0 ],
													"rnbo_classname" : "<=",
													"rnbo_extra_attributes" : 													{
														"hot" : 0
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "<=_obj-19",
													"text" : "<="
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 231.0, 269.0, 43.0, 23.0 ],
													"rnbo_classname" : "noise~",
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "noise~_obj-17",
													"text" : "noise~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 335.0, 311.0, 53.0, 23.0 ],
													"rnbo_classname" : "sah~",
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "sah~_obj-16",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"input" : 															{
																"attrOrProp" : 1,
																"digest" : "input to be sampled",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"trig" : 															{
																"attrOrProp" : 1,
																"digest" : "trigger",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "-1"
															}
,
															"thresh" : 															{
																"attrOrProp" : 1,
																"digest" : "threshold",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"out" : 															{
																"attrOrProp" : 1,
																"digest" : "output",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}

														}
,
														"inputs" : [ 															{
																"name" : "input",
																"type" : "auto",
																"digest" : "input to be sampled",
																"hot" : 1,
																"docked" : 0
															}
, 															{
																"name" : "trig",
																"type" : "auto",
																"digest" : "trigger",
																"docked" : 0
															}
, 															{
																"name" : "thresh",
																"type" : "auto",
																"digest" : "threshold",
																"defaultarg" : 1,
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "out",
																"type" : "signal",
																"digest" : "output",
																"docked" : 0
															}
 ],
														"helpname" : "sah~",
														"aliasOf" : "sah",
														"classname" : "sah~",
														"operator" : 0,
														"versionId" : 962616476,
														"changesPatcherIO" : 0
													}
,
													"text" : "sah~ 0.1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 716.0, 163.0, 194.0, 23.0 ],
													"rnbo_classname" : "buffer~",
													"rnbo_extra_attributes" : 													{
														"samplerate" : 0.0,
														"fill" : "",
														"file" : "",
														"type" : ""
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "buffer~_obj-15",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"info" : 															{
																"attrOrProp" : 1,
																"digest" : "Bang to report buffer information.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "bang"
															}
,
															"sizeout" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"chanout" : 															{
																"attrOrProp" : 1,
																"digest" : "Number of Channels",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"srout" : 															{
																"attrOrProp" : 1,
																"digest" : "Sample rate",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"size" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [ "samples" ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"samples" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 2,
																"isalias" : 1,
																"aliasOf" : "size",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"sizems" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
																"isalias" : 0,
																"aliases" : [ "ms" ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"ms" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
																"isalias" : 1,
																"aliasOf" : "sizems",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"clear" : 															{
																"attrOrProp" : 1,
																"digest" : "Clear the contents of the buffer",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "bang"
															}
,
															"normalize" : 															{
																"attrOrProp" : 1,
																"digest" : "Find Maximum and normalize to the value given.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0.995"
															}
,
															"channels" : 															{
																"attrOrProp" : 1,
																"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 3,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "1"
															}
,
															"name" : 															{
																"attrOrProp" : 2,
																"digest" : "Name of the data buffer",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"mandatory" : 1
															}
,
															"file" : 															{
																"attrOrProp" : 2,
																"digest" : "File name/path or URL to load into buffer.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"url" : 															{
																"attrOrProp" : 2,
																"digest" : "The name of an audio file to load",
																"isalias" : 1,
																"aliasOf" : "file",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"type" : 															{
																"attrOrProp" : 2,
																"digest" : "Type of Data (float32, float64)",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"samplerate" : 															{
																"attrOrProp" : 2,
																"digest" : "Sample rate",
																"defaultarg" : 4,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"fill" : 															{
																"attrOrProp" : 2,
																"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"external" : 															{
																"attrOrProp" : 2,
																"digest" : "Await data from the outside world.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "bool",
																"doNotShowInMaxInspector" : 1
															}

														}
,
														"inputs" : [ 															{
																"name" : "info",
																"type" : "bang",
																"digest" : "Bang to report buffer information.",
																"hot" : 1,
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "sizeout",
																"type" : "number",
																"digest" : "Size in Samples",
																"defaultarg" : 2,
																"docked" : 0
															}
, 															{
																"name" : "chanout",
																"type" : "number",
																"digest" : "Number of Channels",
																"docked" : 0
															}
, 															{
																"name" : "srout",
																"type" : "number",
																"digest" : "Sample rate",
																"docked" : 0
															}
 ],
														"helpname" : "buffer~",
														"aliasOf" : "data",
														"classname" : "buffer~",
														"operator" : 0,
														"versionId" : 51756089,
														"changesPatcherIO" : 0
													}
,
													"text" : "buffer~ grainflowState @external 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 381.0, 253.0, 344.0, 23.0 ],
													"rnbo_classname" : "peek~",
													"rnbo_extra_attributes" : 													{
														"interp" : "none",
														"channelmode" : "ignore",
														"channels" : 1.0
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "peek~_obj-41",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"index" : 															{
																"attrOrProp" : 1,
																"digest" : "Index to sample",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number"
															}
,
															"offset" : 															{
																"attrOrProp" : 1,
																"digest" : "Channel offset (zero-based)",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"out1" : 															{
																"attrOrProp" : 1,
																"digest" : "Sampled value.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}
,
															"outindex" : 															{
																"attrOrProp" : 1,
																"digest" : "Index (in samples).",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}
,
															"buffer" : 															{
																"attrOrProp" : 1,
																"digest" : "If multiple buffer names are declared to be used, this sets the currently active buffer using an index [0 based].",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"buffername" : 															{
																"attrOrProp" : 2,
																"digest" : "Buffer to use",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"mandatory" : 1
															}
,
															"channels" : 															{
																"attrOrProp" : 2,
																"digest" : "Number of channels",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "1"
															}
,
															"boundmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the bound mode for input sample values",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
																"type" : "enum",
																"defaultValue" : "ignore"
															}
,
															"channelmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the bound mode for input channel values",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
																"type" : "enum",
																"defaultValue" : "ignore"
															}
,
															"indexmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the lookup mode",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "phase", "samples", "signal", "lookup", "wave" ],
																"type" : "enum",
																"defaultValue" : "samples"
															}
,
															"interp" : 															{
																"attrOrProp" : 2,
																"digest" : "Set interpolation type",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "linear", "cubic", "spline", "cosine", "step", "none" ],
																"type" : "enum",
																"defaultValue" : "none"
															}

														}
,
														"inputs" : [ 															{
																"name" : "index",
																"type" : "auto",
																"digest" : "Index to sample",
																"hot" : 1,
																"docked" : 0
															}
, 															{
																"name" : "offset",
																"type" : "auto",
																"digest" : "Channel offset (zero-based)",
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "out1",
																"type" : "signal",
																"digest" : "Sampled value.",
																"docked" : 0
															}
, 															{
																"name" : "outindex",
																"type" : "signal",
																"digest" : "Index (in samples).",
																"docked" : 0
															}
 ],
														"helpname" : "peek~",
														"aliasOf" : 														{
															"name" : "peek~"
														}
,
														"classname" : "peek~",
														"operator" : 0,
														"versionId" : 948560414,
														"changesPatcherIO" : 0
													}
,
													"text" : "peek~ grainflowState @indexmode samples @boundmode wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 106.0, 316.0, 77.0, 23.0 ],
													"rnbo_classname" : "pan~",
													"rnbo_extra_attributes" : 													{
														"inputs" : 1.0,
														"boundmode" : "ignore",
														"fademode" : "eqpower",
														"positionmode" : "phase"
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "pan~_obj-9",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"spread" : 															{
																"attrOrProp" : 1,
																"digest" : "The distance between multiple inputs in the panning field.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0.5"
															}
,
															"out1" : 															{
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
															"out2" : 															{
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
															"in0" : 															{
																"attrOrProp" : 1,
																"digest" : "in0",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "signal",
																"defaultValue" : "0"
															}
,
															"pos" : 															{
																"attrOrProp" : 1,
																"digest" : "The pan position value",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"outputs" : 															{
																"attrOrProp" : 2,
																"digest" : "The number of output channels.",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "2"
															}
,
															"inputs" : 															{
																"attrOrProp" : 2,
																"digest" : "The number of input channels.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "1"
															}
,
															"fademode" : 															{
																"attrOrProp" : 2,
																"digest" : "Fade curve mode.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "lin", "eqpower", "cos" ],
																"type" : "enum",
																"defaultValue" : "eqpower"
															}
,
															"positionmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Fade position mode.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "phase", "channel" ],
																"type" : "enum",
																"defaultValue" : "phase"
															}
,
															"boundmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Fade bound mode.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "wrap", "clip", "ignore" ],
																"type" : "enum",
																"defaultValue" : "ignore"
															}

														}
,
														"inputs" : [ 															{
																"name" : "in0",
																"type" : "signal",
																"digest" : "in0",
																"hot" : 1,
																"docked" : 0
															}
, 															{
																"name" : "pos",
																"type" : "auto",
																"digest" : "The pan position value",
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "out1",
																"type" : "signal",
																"digest" : "out1",
																"docked" : 0
															}
, 															{
																"name" : "out2",
																"type" : "signal",
																"digest" : "out2",
																"docked" : 0
															}
 ],
														"helpname" : "pan~",
														"aliasOf" : "pan",
														"classname" : "pan~",
														"operator" : 0,
														"versionId" : -680469649,
														"changesPatcherIO" : 0
													}
,
													"text" : "pan~ 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 441.0, 112.0, 29.5, 23.0 ],
													"rnbo_classname" : "-",
													"rnbo_extra_attributes" : 													{
														"hot" : 0
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "-_obj-4",
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 441.0, 30.0, 56.0, 23.0 ],
													"rnbo_classname" : "loadbang",
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "loadbang_obj-14",
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 441.0, 82.0, 50.5, 23.0 ],
													"rnbo_classname" : "voice",
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "voice_obj-11",
													"text" : "voice"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 441.0, 142.0, 40.0, 23.0 ],
													"rnbo_classname" : "sig~",
													"rnbo_extra_attributes" : 													{
														"unit" : "ms"
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "sig~_obj-8",
													"text" : "sig~ 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 716.0, 122.0, 205.0, 23.0 ],
													"rnbo_classname" : "buffer~",
													"rnbo_extra_attributes" : 													{
														"samplerate" : 0.0,
														"fill" : "",
														"file" : "",
														"type" : ""
													}
,
													"rnbo_serial" : 2,
													"rnbo_uniqueid" : "buffer~_obj-7",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"info" : 															{
																"attrOrProp" : 1,
																"digest" : "Bang to report buffer information.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "bang"
															}
,
															"sizeout" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"chanout" : 															{
																"attrOrProp" : 1,
																"digest" : "Number of Channels",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"srout" : 															{
																"attrOrProp" : 1,
																"digest" : "Sample rate",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"size" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [ "samples" ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"samples" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Samples. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 2,
																"isalias" : 1,
																"aliasOf" : "size",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"sizems" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
																"isalias" : 0,
																"aliases" : [ "ms" ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"ms" : 															{
																"attrOrProp" : 1,
																"digest" : "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
																"isalias" : 1,
																"aliasOf" : "sizems",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"clear" : 															{
																"attrOrProp" : 1,
																"digest" : "Clear the contents of the buffer",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "bang"
															}
,
															"normalize" : 															{
																"attrOrProp" : 1,
																"digest" : "Find Maximum and normalize to the value given.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0.995"
															}
,
															"channels" : 															{
																"attrOrProp" : 1,
																"digest" : "Change channel count. Take care when setting, allocation might block audio processing.",
																"defaultarg" : 3,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "1"
															}
,
															"name" : 															{
																"attrOrProp" : 2,
																"digest" : "Name of the data buffer",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"mandatory" : 1
															}
,
															"file" : 															{
																"attrOrProp" : 2,
																"digest" : "File name/path or URL to load into buffer.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"url" : 															{
																"attrOrProp" : 2,
																"digest" : "The name of an audio file to load",
																"isalias" : 1,
																"aliasOf" : "file",
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"type" : 															{
																"attrOrProp" : 2,
																"digest" : "Type of Data (float32, float64)",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"samplerate" : 															{
																"attrOrProp" : 2,
																"digest" : "Sample rate",
																"defaultarg" : 4,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"fill" : 															{
																"attrOrProp" : 2,
																"digest" : "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"external" : 															{
																"attrOrProp" : 2,
																"digest" : "Await data from the outside world.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "bool",
																"doNotShowInMaxInspector" : 1
															}

														}
,
														"inputs" : [ 															{
																"name" : "info",
																"type" : "bang",
																"digest" : "Bang to report buffer information.",
																"hot" : 1,
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "sizeout",
																"type" : "number",
																"digest" : "Size in Samples",
																"defaultarg" : 2,
																"docked" : 0
															}
, 															{
																"name" : "chanout",
																"type" : "number",
																"digest" : "Number of Channels",
																"docked" : 0
															}
, 															{
																"name" : "srout",
																"type" : "number",
																"digest" : "Sample rate",
																"docked" : 0
															}
 ],
														"helpname" : "buffer~",
														"aliasOf" : "data",
														"classname" : "buffer~",
														"operator" : 0,
														"versionId" : 51756089,
														"changesPatcherIO" : 0
													}
,
													"text" : "buffer~ grainflowOutput @external 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 106.0, 181.0, 354.0, 23.0 ],
													"rnbo_classname" : "peek~",
													"rnbo_extra_attributes" : 													{
														"interp" : "none",
														"channelmode" : "ignore",
														"channels" : 1.0
													}
,
													"rnbo_serial" : 2,
													"rnbo_uniqueid" : "peek~_obj-5",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"index" : 															{
																"attrOrProp" : 1,
																"digest" : "Index to sample",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number"
															}
,
															"offset" : 															{
																"attrOrProp" : 1,
																"digest" : "Channel offset (zero-based)",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"out1" : 															{
																"attrOrProp" : 1,
																"digest" : "Sampled value.",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}
,
															"outindex" : 															{
																"attrOrProp" : 1,
																"digest" : "Index (in samples).",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}
,
															"buffer" : 															{
																"attrOrProp" : 1,
																"digest" : "If multiple buffer names are declared to be used, this sets the currently active buffer using an index [0 based].",
																"isalias" : 0,
																"aliases" : [  ],
																"attachable" : 1,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "0"
															}
,
															"buffername" : 															{
																"attrOrProp" : 2,
																"digest" : "Buffer to use",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"mandatory" : 1
															}
,
															"channels" : 															{
																"attrOrProp" : 2,
																"digest" : "Number of channels",
																"defaultarg" : 2,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"defaultValue" : "1"
															}
,
															"boundmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the bound mode for input sample values",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
																"type" : "enum",
																"defaultValue" : "ignore"
															}
,
															"channelmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the bound mode for input channel values",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
																"type" : "enum",
																"defaultValue" : "ignore"
															}
,
															"indexmode" : 															{
																"attrOrProp" : 2,
																"digest" : "Set the lookup mode",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "phase", "samples", "signal", "lookup", "wave" ],
																"type" : "enum",
																"defaultValue" : "samples"
															}
,
															"interp" : 															{
																"attrOrProp" : 2,
																"digest" : "Set interpolation type",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"enum" : [ "linear", "cubic", "spline", "cosine", "step", "none" ],
																"type" : "enum",
																"defaultValue" : "none"
															}

														}
,
														"inputs" : [ 															{
																"name" : "index",
																"type" : "auto",
																"digest" : "Index to sample",
																"hot" : 1,
																"docked" : 0
															}
, 															{
																"name" : "offset",
																"type" : "auto",
																"digest" : "Channel offset (zero-based)",
																"docked" : 0
															}
 ],
														"outputs" : [ 															{
																"name" : "out1",
																"type" : "signal",
																"digest" : "Sampled value.",
																"docked" : 0
															}
, 															{
																"name" : "outindex",
																"type" : "signal",
																"digest" : "Index (in samples).",
																"docked" : 0
															}
 ],
														"helpname" : "peek~",
														"aliasOf" : 														{
															"name" : "peek~"
														}
,
														"classname" : "peek~",
														"operator" : 0,
														"versionId" : 948560414,
														"changesPatcherIO" : 0
													}
,
													"text" : "peek~ grainflowOutput @indexmode samples @boundmode wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 164.0, 360.0, 43.0, 23.0 ],
													"rnbo_classname" : "out~",
													"rnbo_extra_attributes" : 													{
														"comment" : "",
														"meta" : ""
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "out~_obj-3",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"in1" : 															{
																"attrOrProp" : 1,
																"digest" : "signal sent to outlet with index 2",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "signal"
															}
,
															"index" : 															{
																"attrOrProp" : 2,
																"digest" : "outlet number",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"mandatory" : 1
															}
,
															"comment" : 															{
																"attrOrProp" : 2,
																"digest" : "mouse over comment",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"meta" : 															{
																"attrOrProp" : 2,
																"digest" : "A JSON formatted string containing metadata for use by the exported code",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"defaultValue" : "",
																"label" : "Metadata",
																"displayorder" : 3
															}

														}
,
														"inputs" : [ 															{
																"name" : "in1",
																"type" : "signal",
																"digest" : "signal sent to outlet with index 2",
																"displayName" : "",
																"hot" : 1,
																"docked" : 0
															}
 ],
														"outputs" : [  ],
														"helpname" : "out~",
														"aliasOf" : "out~",
														"classname" : "out~",
														"operator" : 0,
														"versionId" : 374499139,
														"changesPatcherIO" : 1
													}
,
													"text" : "out~ 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 106.0, 360.0, 43.0, 23.0 ],
													"rnbo_classname" : "out~",
													"rnbo_extra_attributes" : 													{
														"comment" : "",
														"meta" : ""
													}
,
													"rnbo_serial" : 2,
													"rnbo_uniqueid" : "out~_obj-2",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"in1" : 															{
																"attrOrProp" : 1,
																"digest" : "signal sent to outlet with index 1",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"inlet" : 1,
																"type" : "signal"
															}
,
															"index" : 															{
																"attrOrProp" : 2,
																"digest" : "outlet number",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"mandatory" : 1
															}
,
															"comment" : 															{
																"attrOrProp" : 2,
																"digest" : "mouse over comment",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"meta" : 															{
																"attrOrProp" : 2,
																"digest" : "A JSON formatted string containing metadata for use by the exported code",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"defaultValue" : "",
																"label" : "Metadata",
																"displayorder" : 3
															}

														}
,
														"inputs" : [ 															{
																"name" : "in1",
																"type" : "signal",
																"digest" : "signal sent to outlet with index 1",
																"displayName" : "",
																"hot" : 1,
																"docked" : 0
															}
 ],
														"outputs" : [  ],
														"helpname" : "out~",
														"aliasOf" : "out~",
														"classname" : "out~",
														"operator" : 0,
														"versionId" : 374499139,
														"changesPatcherIO" : 1
													}
,
													"text" : "out~ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 106.0, 68.0, 35.0, 23.0 ],
													"rnbo_classname" : "in~",
													"rnbo_extra_attributes" : 													{
														"comment" : "",
														"meta" : ""
													}
,
													"rnbo_serial" : 1,
													"rnbo_uniqueid" : "in~_obj-1",
													"rnboinfo" : 													{
														"needsInstanceInfo" : 1,
														"argnames" : 														{
															"out1" : 															{
																"attrOrProp" : 1,
																"digest" : "signal from inlet with index 1",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 0,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"outlet" : 1,
																"type" : "signal"
															}
,
															"index" : 															{
																"attrOrProp" : 2,
																"digest" : "inlet number",
																"defaultarg" : 1,
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "number",
																"mandatory" : 1
															}
,
															"comment" : 															{
																"attrOrProp" : 2,
																"digest" : "mouse over comment",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol"
															}
,
															"meta" : 															{
																"attrOrProp" : 2,
																"digest" : "A JSON formatted string containing metadata for use by the exported code",
																"isalias" : 0,
																"aliases" : [  ],
																"settable" : 1,
																"attachable" : 0,
																"isparam" : 0,
																"deprecated" : 0,
																"type" : "symbol",
																"defaultValue" : "",
																"label" : "Metadata",
																"displayorder" : 3
															}

														}
,
														"inputs" : [  ],
														"outputs" : [ 															{
																"name" : "out1",
																"type" : "signal",
																"digest" : "signal from inlet with index 1",
																"displayName" : "",
																"docked" : 0
															}
 ],
														"helpname" : "in~",
														"aliasOf" : "in~",
														"classname" : "in~",
														"operator" : 0,
														"versionId" : -176007711,
														"changesPatcherIO" : 1
													}
,
													"text" : "in~ 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"order" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 0,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 1 ],
													"order" : 0,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"order" : 1,
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
 ],
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
									"patching_rect" : [ 119.0, 265.0, 300.0, 23.0 ],
									"rnbo_classname" : "p",
									"rnbo_extra_attributes" : 									{
										"receivemode" : "local",
										"args" : [  ],
										"exposevoiceparams" : 0,
										"notecontroller" : 0
									}
,
									"rnbo_serial" : 11,
									"rnbo_uniqueid" : "proccessGrains",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
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
												"type" : "list"
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
												"displayName" : "",
												"hot" : 1,
												"docked" : 0
											}
, 											{
												"name" : "in2",
												"type" : [ "bang", "number", "list" ],
												"digest" : "in2",
												"displayName" : "",
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
									"text" : "p proccessGrains @polyphony 64 @voicecontrol simple",
									"varname" : "proccessGrains"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 119.0, 199.0, 104.0, 23.0 ],
									"rnbo_classname" : "p",
									"rnbo_extra_attributes" : 									{
										"receivemode" : "local",
										"args" : [  ],
										"polyphony" : -1.0,
										"voicecontrol" : "simple",
										"exposevoiceparams" : 0,
										"notecontroller" : 0
									}
,
									"rnbo_serial" : 4,
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
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
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
					"patching_rect" : [ 109.0, 181.0, 154.0, 23.0 ],
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
						"uuid" : "216a5715-b67b-11ee-9715-a8a1598428b5"
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
							"__presetid" : "216a5715-b67b-11ee-9715-a8a1598428b5",
							"__sps" : 							{
								"proccessGrains" : [ 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
, 									{

									}
 ],
								"p_obj-1" : 								{
									"nvoices" : 									{
										"value" : 4.0
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
									"origin" : "216a5715-b67b-11ee-9715-a8a1598428b5",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "216a5715-b67b-11ee-9715-a8a1598428b5",
										"__sps" : 										{
											"proccessGrains" : [ 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
, 												{

												}
 ],
											"p_obj-1" : 											{
												"nvoices" : 												{
													"value" : 4.0
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
										"filename" : "untitled_20240118.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "f8886cd7b7f3c91cd7a79c1e4110fd6a"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~ grainflowHarmonizer",
					"varname" : "rnbo~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
 ],
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
				"name" : "untitled_20240118.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../Snapshots",
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
