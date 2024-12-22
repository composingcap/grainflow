{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 160.0, 172.0, 668.0, 716.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"style" : "Grainflow",
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"bubblepoint" : 0.0,
					"id" : "obj-29",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 117.0, 397.0, 151.0, 68.0 ],
					"text" : "Mc Mixdown will work because grainflow operates in with similar rules to mc"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.0, 131.0, 203.0, 39.0 ],
					"text" : "Each channel represents on multichannel grain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 232.0, 135.0, 115.0, 23.0 ],
					"text" : "mc.noise~ @chans 2"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-24",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 214.0, 147.0, 97.0 ],
					"text" : "You must state the number of buffer channels and set the window positions manually "
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 126.0, 102.0, 25.0 ],
					"text" : "Enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 181.0, 77.0, 23.0 ],
					"text" : "loadmess 0.1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-58",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 355.0, 210.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 232.0, 222.0, 59.0, 23.0 ],
					"text" : "mc.*~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 208.0, 289.0, 41.0, 23.0 ],
					"text" : "mc.+~"
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 8,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-13",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 642.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 7,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-17",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 606.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 6,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-18",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 570.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 5,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-19",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 534.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 4,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-12",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 499.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 3,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-11",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 463.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 2,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-10",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 427.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"bgColor" : [ 1.0, 1.0, 1.0, 0.56 ],
					"buffername" : "_gf_mcShuffle",
					"chan" : 1,
					"dotScale" : 5.0,
					"fps" : 60,
					"id" : "obj-9",
					"maxclass" : "grainflow.waveform~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 347.0, 391.0, 266.0, 26.0 ],
					"vZoom" : 3.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 208.0, 248.0, 218.0, 23.0 ],
					"text" : "grainflow.util.bphasor~ _gf_mcShuffle 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 50.0, 401.0, 35.0 ],
					"text" : "By using buffer channels we can granulate multichannel audio without losing its spatial layout"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 30.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 7.0, 474.0, 42.0 ],
					"text" : "Multichannel Soundfile Shuffle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 565.0, 49.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"lastchannelcount" : 8,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 22.0, 476.0, 140.0, 83.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 34.5, 162.0, 68.0, 23.0 ],
					"text" : "phasor~ 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 22.0, 370.0, 93.0, 23.0 ],
					"text" : "mc.mixdown~ 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.0, 124.0, 28.0, 28.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 9.0, 90.0, 217.0, 23.0 ],
					"text" : "buffer~ _gf_mcShuffle senita-8ch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 9,
					"outlettype" : [ "multichannelsignal", "list", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 22.0, 322.0, 577.0, 23.0 ],
					"text" : "grainflow~ _gf_mcShuffle 16 @bufChans 8 @autoOverlap 0 @windowOffset 0 @window 0 0.5 @space 0.25"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.556862745098039, 0.549019607843137, 0.549019607843137, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 347.0, 374.0, 273.0, 305.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 101.25, 357.0, 356.5, 357.0 ],
					"order" : 6,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 393.0, 356.5, 393.0 ],
					"order" : 5,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 429.0, 356.5, 429.0 ],
					"order" : 4,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 579.0, 356.5, 579.0 ],
					"order" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 540.0, 356.5, 540.0 ],
					"order" : 1,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 504.0, 356.5, 504.0 ],
					"order" : 2,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 101.25, 360.0, 279.333333333333371, 360.0, 279.333333333333371, 465.0, 356.5, 465.0 ],
					"order" : 3,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 101.25, 357.0, 279.333333333333371, 357.0, 279.333333333333371, 363.0, 356.5, 363.0 ],
					"order" : 7,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 44.0, 312.610188245773315, 31.5, 312.610188245773315 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-6",
		"parameters" : 		{
			"obj-15" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
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
				"name" : "grainflow.util.bphasor~.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Grainflow/patchers/util",
				"patcherrelativepath" : "../../../patchers/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.waveform~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "grainflow~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"boxgroups" : [ 			{
				"boxes" : [ "obj-9", "obj-10", "obj-11", "obj-12", "obj-19", "obj-18", "obj-17", "obj-13" ]
			}
 ],
		"styles" : [ 			{
				"name" : "Grainflow",
				"default" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.470588235294118, 1.0, 0.403921568627451, 1.0 ],
					"editing_bgcolor" : [ 0.333333333333333, 0.333333333333333, 0.333333333333333, 1.0 ],
					"fontname" : [ "Lato Medium" ],
					"fontsize" : [ 12.0 ],
					"locked_bgcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"syntax_attrargcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"syntax_attributecolor" : [ 0.807843137254902, 1.0, 0.784313725490196, 1.0 ],
					"syntax_objectcolor" : [ 0.470588235294118, 1.0, 0.403921568627451, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
