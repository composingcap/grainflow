{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 557.0, 217.0, 1343.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
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
		"style" : "Minimal",
		"subpatcher_template" : "minimal",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 22.0, 81.0, 54.0, 22.0 ],
					"text" : "mc.pack~"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "FemVoice.aif",
								"filename" : "FemVoice.aif",
								"filekind" : "audiofile",
								"id" : "u411001149",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-5",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 22.0, 39.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 302.0, 49.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "grainflow.readymade.cloudhopper.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 22.0, 117.0, 763.0, 169.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-103" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-1::obj-104" : [ "live.numbox[15]", "live.numbox", 0 ],
			"obj-1::obj-108" : [ "live.numbox[16]", "live.numbox", 0 ],
			"obj-1::obj-109" : [ "live.numbox[17]", "live.numbox", 0 ],
			"obj-1::obj-113" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-1::obj-114" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-1::obj-118" : [ "live.numbox[20]", "live.numbox", 0 ],
			"obj-1::obj-119" : [ "live.numbox[21]", "live.numbox", 0 ],
			"obj-1::obj-123" : [ "live.numbox[22]", "live.numbox", 0 ],
			"obj-1::obj-18" : [ "out", "out", 0 ],
			"obj-1::obj-23" : [ "grain size", "grain size", 0 ],
			"obj-1::obj-32" : [ "random grain delay", "random grain delay", 0 ],
			"obj-1::obj-34" : [ "live.numbox", "live.numbox", 0 ],
			"obj-1::obj-46" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-1::obj-5" : [ "feedback", "feedback", 0 ],
			"obj-1::obj-50" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-1::obj-67" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-1::obj-76" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-1::obj-81" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-1::obj-83" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-1::obj-84" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-1::obj-88" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-1::obj-89" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-1::obj-9" : [ "delay time", "fb delay time", 0 ],
			"obj-1::obj-93" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-1::obj-94" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-1::obj-98" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-1::obj-99" : [ "live.numbox[13]", "live.numbox", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-5" : 				{
					"parameter_initial" : 0
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "FemVoice.aif",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/samples",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "_grainflow.poly.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/patchers/_private",
				"patcherrelativepath" : "../../../../patchers/_private",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.readymade.cloudhopper.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/patchers/readymades",
				"patcherrelativepath" : "../../../../patchers/readymades",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.record.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/code",
				"patcherrelativepath" : "../../../../code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.util.record~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/patchers/util",
				"patcherrelativepath" : "../../../../patchers/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.util.stereoPan~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/patchers",
				"patcherrelativepath" : "../../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.voice.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/code",
				"patcherrelativepath" : "../../../../code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Grainflow/patchers",
				"patcherrelativepath" : "../../../../patchers",
				"type" : "JSON",
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
					"elementcolor" : [ 0.694117647058824, 0.694117647058824, 0.694117647058824, 1.0 ],
					"fontface" : [ 0 ],
					"fontname" : [ "Lato" ],
					"fontsize" : [ 11.0 ],
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
