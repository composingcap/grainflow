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
		"rect" : [ 549.0, 263.0, 616.0, 691.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"style" : "Minimal",
		"subpatcher_template" : "minimal",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 616.0, 665.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"style" : "Grainflow",
						"subpatcher_template" : "minimal",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 405.5, 20.0, 21.0 ],
									"text" : "!",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 141.928374618291855, 407.428374618291855, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.0, 301.5, 17.0, 17.0 ],
									"text" : "4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.0, 301.5, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 235.5, 17.0, 17.0 ],
									"text" : "3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 235.5, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 227.5, 418.0, 35.0 ],
									"text" : "We need a random delay that is close to the size of the entire buffer. We need to leave at least a signal vecor of space to avoid clicks."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 266.0, 85.0, 23.0 ],
									"text" : "loadmess 0.8"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-14",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 67.0, 299.0, 58.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 299.0, 247.0, 35.0 ],
									"text" : "The amount of overdub will determine how sustained our sound is"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 53.0, 582.0, 64.0 ],
									"text" : "This is an example of a sustain effect that can be created using grainflow.live~. \nThe effect is created by randomly sampling a small buffer that is overwritten using overdubbing so that some of the old sound remains in the buffer when new sounds are added.  \nThis kind of sustain effect is great for long or infintie reverbs and has no risk of uncontrolable feedback."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 330.0, 77.0, 23.0 ],
									"text" : "overdub $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, 206.0, 105.0, 23.0 ],
									"text" : "loadmess 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.0, 399.5, 233.0, 35.0 ],
									"text" : "We must use a small buffer size for this effect to work"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 43.0, 371.0, 67.0, 23.0 ],
									"text" : "phasor~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"local" : 1,
									"maxclass" : "mc.ezdac~",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 537.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 170.0, 17.0, 17.0 ],
									"text" : "2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 170.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 131.0, 17.0, 17.0 ],
									"text" : "1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 131.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 166.0, 247.0, 21.0 ],
									"text" : "Play this sound file into grainflow.live~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, 233.0, 105.0, 23.0 ],
									"text" : "delayRandom $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "list" ],
									"patching_rect" : [ 9.0, 449.0, 143.0, 23.0 ],
									"text" : "grainflow.util.stereoPan~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 131.0, 255.0, 21.0 ],
									"text" : "Enable recording and playback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 9.0, 131.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"lastchannelcount" : 2,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 9.0, 477.0, 115.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[3]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 30.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 9.0, 311.0, 42.0 ],
									"text" : "Sustain"
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 440,
									"clipheight" : 27.0,
									"data" : 									{
										"clips" : [ 											{
												"absolutepath" : "anton.aif",
												"filename" : "anton.aif",
												"filekind" : "audiofile",
												"id" : "u284005016",
												"selection" : [ 0.0, 1.0 ],
												"loop" : 1,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"speed" : [ 1.0 ],
													"formantcorrection" : [ 0 ],
													"formant" : [ 1.0 ],
													"originaltempo" : [ 120.0 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"originallength" : [ 0.0, "ticks" ],
													"basictuning" : [ 440 ],
													"slurtime" : [ 0.0 ],
													"quality" : [ "basic" ],
													"timestretch" : [ 0 ],
													"mode" : [ "basic" ],
													"followglobaltempo" : [ 0 ]
												}

											}
 ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-19",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0.0, "ticks" ],
									"originaltempo" : 120.0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 25.0, 166.0, 135.0, 28.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"saved_attribute_attributes" : 									{
										"candicane2" : 										{
											"expression" : ""
										}
,
										"candicane3" : 										{
											"expression" : ""
										}
,
										"candicane4" : 										{
											"expression" : ""
										}
,
										"candicane5" : 										{
											"expression" : ""
										}
,
										"candicane6" : 										{
											"expression" : ""
										}
,
										"candicane7" : 										{
											"expression" : ""
										}
,
										"candicane8" : 										{
											"expression" : ""
										}

									}
,
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 9,
									"outlettype" : [ "multichannelsignal", "list", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 9.0, 403.0, 121.0, 23.0 ],
									"text" : "grainflow.live~ 250 8"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"midpoints" : [ 44.0, 436.5, 142.5, 436.5 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 34.5, 291.0, 18.5, 291.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 57.5, 309.5, 18.5, 309.5 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 76.5, 363.5, 18.5, 363.5 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-11",
						"boxgroups" : [ 							{
								"boxes" : [ "obj-39", "obj-38" ]
							}
, 							{
								"boxes" : [ "obj-29", "obj-35" ]
							}
, 							{
								"boxes" : [ "obj-12", "obj-10" ]
							}
, 							{
								"boxes" : [ "obj-18", "obj-17" ]
							}
, 							{
								"boxes" : [ "obj-22", "obj-23" ]
							}
 ],
						"styles" : [ 							{
								"name" : "Grainflow",
								"default" : 								{
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
,
					"patching_rect" : [ 213.0, 62.0, 54.0, 21.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"style" : "Grainflow"
					}
,
					"text" : "p sustain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 616.0, 665.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"style" : "Grainflow",
						"subpatcher_template" : "minimal",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 305.0, 17.0, 17.0 ],
									"text" : "4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 305.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 305.0, 258.0, 64.0 ],
									"text" : "You may also need to add a small amount of random delay to avoid phase issues that are introduced when applying large amounts of transposition. "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 240.0, 17.0, 17.0 ],
									"text" : "3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 240.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 134.0, 236.0, 259.0, 64.0 ],
									"text" : "When you adjust trasposition rate, you are changing how quickly a grain plays. This means you need to delay your grains by the grain size each octave increase in pitch."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 68.0, 302.0, 97.0, 23.0 ],
									"text" : "delayRandom 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 51.0, 561.0, 78.0 ],
									"text" : "This is an example of how you can use grainflow.live~ as a harmonizer.  \nBecause grainulation overlaps and adds small snippets of a sound, we can play individual grains faster or slower to change the pitch of the sound without changing the what we hear as as the playback speed.\nThe one thing we must remember is that we cannot read samples that exist in the future, so when we transpose up, we must also add some delay."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 86.0, 332.0, 75.0, 23.0 ],
									"text" : "loadmess 8"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-40",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 192.0, 492.0, 54.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-34",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 62.0, 357.0, 50.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 288.0, 471.0, 155.5, 39.0 ],
									"text" : "Gets minimum delay in ms"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 396.0, 351.0, 1082.0, 597.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"style" : "Minimal-1",
										"subpatcher_template" : "minimal",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 234.0, 45.0, 105.0, 23.0 ],
													"text" : "mc.snapshot~ 150"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.0, 72.0, 70.0, 23.0 ],
													"text" : "mc.makelist"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 72.0, 105.0, 23.0 ],
													"text" : "expr (1/$f1)*1000"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 251.5, 50.5, 23.0 ],
													"text" : "- 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"patching_rect" : [ 50.0, 190.5, 51.0, 23.0 ],
													"text" : "t b f"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 225.5, 50.5, 23.0 ],
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.0, 170.0, 132.0, 23.0 ],
													"text" : "expr pow(2\\,$f1/12)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 102.0, 146.0, 188.0, 23.0 ],
													"text" : "if $f1 < 0 then 0 else out2 $f1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "float", "int" ],
													"patching_rect" : [ 102.0, 100.0, 93.0, 23.0 ],
													"text" : "maximum 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 228.0, 18.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 333.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 1 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 2 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"originid" : "pat-15",
										"styles" : [ 											{
												"name" : "Minimal",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "Minimal-1",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.999999, 0.999974, 0.999991, 1.0 ],
													"bgfillcolor" : 													{
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
,
									"patching_rect" : [ 192.0, 457.0, 77.0, 23.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"style" : "Minimal-1"
									}
,
									"text" : "p getLatency"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 124.0, 389.0, 150.0, 25.0 ],
									"text" : "Grain clock"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-26",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 204.0, 416.0, 260.0, 39.0 ],
									"text" : "Pitches in semitones as a multichannel signal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.0, 238.0, 63.0, 23.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 273.0, 67.0, 23.0 ],
									"text" : "delay 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 104.0, 417.0, 101.0, 23.0 ],
									"text" : "mc.list~ -7 0 5 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 62.0, 390.0, 61.0, 23.0 ],
									"text" : "phasor~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"local" : 1,
									"maxclass" : "mc.ezdac~",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 591.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 182.0, 17.0, 17.0 ],
									"text" : "2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 182.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 143.0, 17.0, 17.0 ],
									"text" : "1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 143.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 178.0, 237.0, 21.0 ],
									"text" : "Play this sound file into grainflow.live~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "list" ],
									"patching_rect" : [ 20.0, 503.0, 150.0, 23.0 ],
									"text" : "grainflow.util.stereoPan~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 143.0, 255.0, 21.0 ],
									"text" : "Enable recording and playback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 19.0, 143.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"lastchannelcount" : 2,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 20.0, 531.0, 115.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[2]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 30.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 7.0, 311.0, 42.0 ],
									"text" : "Harmonization"
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 440,
									"clipheight" : 27.0,
									"data" : 									{
										"clips" : [ 											{
												"absolutepath" : "anton.aif",
												"filename" : "anton.aif",
												"filekind" : "audiofile",
												"id" : "u284005016",
												"selection" : [ 0.0, 1.0 ],
												"loop" : 1,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"speed" : [ 1.0 ],
													"formantcorrection" : [ 0 ],
													"formant" : [ 1.0 ],
													"originaltempo" : [ 120.0 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"originallength" : [ 0.0, "ticks" ],
													"basictuning" : [ 440 ],
													"slurtime" : [ 0.0 ],
													"quality" : [ "basic" ],
													"timestretch" : [ 0 ],
													"mode" : [ "basic" ],
													"followglobaltempo" : [ 0 ]
												}

											}
 ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-19",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0.0, "ticks" ],
									"originaltempo" : 120.0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 35.0, 178.0, 135.0, 28.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"saved_attribute_attributes" : 									{
										"candicane2" : 										{
											"expression" : ""
										}
,
										"candicane3" : 										{
											"expression" : ""
										}
,
										"candicane4" : 										{
											"expression" : ""
										}
,
										"candicane5" : 										{
											"expression" : ""
										}
,
										"candicane6" : 										{
											"expression" : ""
										}
,
										"candicane7" : 										{
											"expression" : ""
										}
,
										"candicane8" : 										{
											"expression" : ""
										}

									}
,
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 9,
									"outlettype" : [ "multichannelsignal", "list", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 20.0, 457.0, 145.0, 23.0 ],
									"text" : "grainflow.live~ 5000 8"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"midpoints" : [ 61.0, 490.5, 160.5, 490.5 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 44.5, 267.75, 77.5, 267.75 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 77.5, 347.5, 29.5, 347.5 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 44.5, 473.0, 29.5, 473.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 71.5, 384.5, 201.5, 384.5 ],
									"order" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"midpoints" : [ 113.5, 448.5, 259.5, 448.5 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 44.5, 321.5, 29.5, 321.5 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-13",
						"boxgroups" : [ 							{
								"boxes" : [ "obj-29", "obj-35" ]
							}
 ],
						"styles" : [ 							{
								"name" : "Grainflow",
								"default" : 								{
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
,
					"patching_rect" : [ 90.0, 13.0, 90.0, 21.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"style" : "Grainflow"
					}
,
					"text" : "p harmonization"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 549.0, 289.0, 616.0, 665.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"style" : "Grainflow",
						"subpatcher_template" : "minimal",
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 390.0, 17.0, 17.0 ],
									"text" : "4",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-42",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 390.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 387.0, 29.5, 23.0 ],
									"text" : "8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 412.0, 105.0, 23.0 ],
									"text" : "expr (1/$f1)*1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 434.0, 54.0, 23.0 ],
									"text" : "delay $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 406.0, 302.0, 35.0 ],
									"text" : "To avoid this you can add a delay equal to the grainsize  whenever you freeze or stop recording"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 324.0, 302.0, 64.0 ],
									"text" : "Note when you stop recording or freeze playback, grains will start from the position the record head was stopped or frozen. This means grains will \"overflow\" beyond the recoded buffer. ",
									"textcolor" : [ 1.0, 0.564705882352941, 0.564705882352941, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "delayRandom",
									"displaymode" : 2,
									"id" : "obj-22",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 205.0, 150.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 263.0, 17.0, 17.0 ],
									"text" : "3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-17",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 263.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 257.0, 307.0, 64.0 ],
									"text" : "You can control recording and playback seperatly.\nfreeze: keeps recoding and freezes the playhead\nrec: starts and stops recording. Will freeze the playhead\nplay: starts and stops playback"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 179.5, 17.0, 17.0 ],
									"text" : "3",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-12",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 179.5, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 178.0, 237.0, 35.0 ],
									"text" : "Adjust the delay and delay random parameters"
								}

							}
, 							{
								"box" : 								{
									"bgColor" : [ 0.27843137254902, 0.27843137254902, 0.27843137254902, 1.0 ],
									"buffername" : "u687000420",
									"dotColor" : [ 0.470588235294118, 1.0, 0.403921568627451, 1.0 ],
									"dotColorSecondary" : [ 0.184313725490196, 0.396078431372549, 0.16078431372549, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "grainflow.waveform~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 182.0, 515.0, 354.0, 60.0 ],
									"selectColor" : [ 0.949019607843137, 1.0, 0.0, 0.13 ],
									"trackerColor" : [ 0.470588235294118, 1.0, 0.403921568627451, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 472.0, 230.0, 21.0 ],
									"text" : "Args: buffer-length max-grains"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 430.0, 61.0, 23.0 ],
									"text" : "phasor~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"local" : 1,
									"maxclass" : "mc.ezdac~",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 618.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 142.0, 17.0, 17.0 ],
									"text" : "2",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 163.0, 142.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 103.0, 17.0, 17.0 ],
									"text" : "1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 103.0, 16.0, 17.0 ],
									"proportion" : 0.39,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 182.0, 138.0, 237.0, 21.0 ],
									"text" : "Play this sound file into grainflow.live~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "list" ],
									"patching_rect" : [ 9.0, 519.0, 152.0, 23.0 ],
									"text" : "grainflow.util.stereoPan~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 103.0, 255.0, 21.0 ],
									"text" : "Enable recording and playback"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 9.0, 103.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"lastchannelcount" : 2,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 9.0, 545.0, 115.0, 47.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[1]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_osc_name" : "<default>",
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 56.0, 496.0, 35.0 ],
									"text" : "An easy to use live implementation of grainflow~.  This abstraction creates an internal buffer, records to it, and keeps the granulator in sync."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 30.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 9.0, 311.0, 42.0 ],
									"text" : "grainflow.live~"
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 440,
									"clipheight" : 27.0,
									"data" : 									{
										"clips" : [ 											{
												"absolutepath" : "anton.aif",
												"filename" : "anton.aif",
												"filekind" : "audiofile",
												"id" : "u284005016",
												"selection" : [ 0.0, 1.0 ],
												"loop" : 1,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"speed" : [ 1.0 ],
													"formantcorrection" : [ 0 ],
													"formant" : [ 1.0 ],
													"originaltempo" : [ 120.0 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"originallength" : [ 0.0, "ticks" ],
													"basictuning" : [ 440 ],
													"slurtime" : [ 0.0 ],
													"quality" : [ "basic" ],
													"timestretch" : [ 0 ],
													"mode" : [ "basic" ],
													"followglobaltempo" : [ 0 ]
												}

											}
 ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-19",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0.0, "ticks" ],
									"originaltempo" : 120.0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 25.0, 138.0, 135.0, 28.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"saved_attribute_attributes" : 									{
										"candicane2" : 										{
											"expression" : ""
										}
,
										"candicane3" : 										{
											"expression" : ""
										}
,
										"candicane4" : 										{
											"expression" : ""
										}
,
										"candicane5" : 										{
											"expression" : ""
										}
,
										"candicane6" : 										{
											"expression" : ""
										}
,
										"candicane7" : 										{
											"expression" : ""
										}
,
										"candicane8" : 										{
											"expression" : ""
										}

									}
,
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 9,
									"outlettype" : [ "multichannelsignal", "list", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 9.0, 471.0, 127.0, 23.0 ],
									"text" : "grainflow.live~ 5000 8"
								}

							}
, 							{
								"box" : 								{
									"attr" : "freeze",
									"id" : "obj-7",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 289.5, 150.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "play",
									"id" : "obj-9",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 316.0, 150.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "rec",
									"id" : "obj-15",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 345.0, 150.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "delay",
									"displaymode" : 2,
									"id" : "obj-18",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 176.5, 150.0, 23.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"midpoints" : [ 45.5, 504.5, 151.5, 504.5 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 49.5, 391.5, 18.5, 391.5 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 49.5, 307.25, 18.5, 307.25 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 34.5, 263.0, 18.5, 263.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 49.5, 321.5, 18.5, 321.5 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 49.5, 363.75, 18.5, 363.75 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 49.5, 377.0, 18.5, 377.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-17",
						"boxgroups" : [ 							{
								"boxes" : [ "obj-39", "obj-38" ]
							}
, 							{
								"boxes" : [ "obj-29", "obj-35" ]
							}
, 							{
								"boxes" : [ "obj-12", "obj-11" ]
							}
, 							{
								"boxes" : [ "obj-17", "obj-16" ]
							}
, 							{
								"boxes" : [ "obj-42", "obj-41" ]
							}
 ],
						"styles" : [ 							{
								"name" : "Grainflow",
								"default" : 								{
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
,
					"patching_rect" : [ 23.0, 14.0, 44.0, 21.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"style" : "Grainflow"
					}
,
					"text" : "p basic"
				}

			}
 ],
		"lines" : [  ],
		"originid" : "pat-9",
		"parameters" : 		{
			"obj-1::obj-20" : [ "mc.live.gain~[2]", "mc.live.gain~", 0 ],
			"obj-2::obj-20" : [ "mc.live.gain~[3]", "mc.live.gain~", 0 ],
			"obj-47::obj-20" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "anton.aif",
				"bootpath" : "C74:/media/msp",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "grainflow.live~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "grainflow.util.stereopan~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "grainflow.waveform~.mxe64",
				"type" : "mx64"
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
					"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"editing_bgcolor" : [ 0.956862745098039, 0.956862745098039, 0.956862745098039, 1.0 ],
					"elementcolor" : [ 0.694117647058824, 0.694117647058824, 0.694117647058824, 1.0 ],
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
 ]
	}

}
