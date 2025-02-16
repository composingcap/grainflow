{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 6,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            561.0,
            415.0,
            595.0,
            533.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "",
        "digest": "",
        "tags": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        332.0,
                        253.0,
                        54.0,
                        22.0
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "buffername": "2081_flow_1",
                    "id": "obj-9",
                    "maxclass": "grainflow.waveform~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        253.0,
                        346.0,
                        300.0,
                        100.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-11",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        312.0,
                        157.0,
                        150.0,
                        66.0
                    ],
                    "text": "Sustains sound when there is little input, but replaces it when there is a good amount input"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        427.0,
                        102.0,
                        17.0,
                        17.0
                    ],
                    "text": "2",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-7",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        427.0,
                        102.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        454.0,
                        102.0,
                        121.0,
                        20.0
                    ],
                    "text": "Adjust sustain level"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        230.0,
                        114.0,
                        17.0,
                        17.0
                    ],
                    "text": "2",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-47",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        230.0,
                        114.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        257.0,
                        114.0,
                        83.0,
                        20.0
                    ],
                    "text": "Play sound "
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58.0,
                        71.0,
                        17.0,
                        17.0
                    ],
                    "text": "1",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-36",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58.0,
                        71.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        85.0,
                        71.0,
                        255.0,
                        20.0
                    ],
                    "text": "Enable recording and playback"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        18.0,
                        10.0,
                        369.0,
                        34.0
                    ],
                    "text": "Grainflow Sustain"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        332.0,
                        225.0,
                        58.0,
                        22.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "clarinetA3.wav",
                                "filename": "clarinetA3.wav",
                                "filekind": "audiofile",
                                "id": "u878000846",
                                "selection": [
                                    0.0,
                                    1.0
                                ],
                                "loop": 0,
                                "content_state": {}
                            }
                        ]
                    },
                    "followglobaltempo": 0,
                    "formantcorrection": 0,
                    "id": "obj-6",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "originallength": [
                        0.0,
                        "ticks"
                    ],
                    "originaltempo": 120.0,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        61.0,
                        104.0,
                        150.0,
                        30.0
                    ],
                    "pitchcorrection": 0,
                    "quality": "basic",
                    "timestretch": [
                        0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        368.0,
                        71.0,
                        41.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.9,
                            "parameter_modmode": 0,
                            "parameter_shortname": "sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        217.0,
                        189.0,
                        64.0,
                        22.0
                    ],
                    "text": "clip 0. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        217.0,
                        214.0,
                        112.0,
                        22.0
                    ],
                    "text": "scale 0. 0.5 0.9 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        217.0,
                        157.0,
                        85.0,
                        22.0
                    ],
                    "text": "peakamp~ 10"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-54",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        217.0,
                        240.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        94.66666666666666,
                        273.0,
                        62.0,
                        22.0
                    ],
                    "text": "phasor~ 8"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        217.0,
                        269.0,
                        69.0,
                        22.0
                    ],
                    "text": "overdub $1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        332.0,
                        282.0,
                        130.0,
                        22.0
                    ],
                    "text": "delayRandom 180"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "lastchannelcount": 2,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [
                        "multichannelsignal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        389.0,
                        136.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "mc.live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 9,
                    "outlettype": [
                        "multichannelsignal",
                        "bang",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        61.0,
                        315.0,
                        120.0,
                        22.0
                    ],
                    "text": "grainflow.live~ 250 4"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        450.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        18.0,
                        67.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        ""
                    ],
                    "patching_rect": [
                        61.0,
                        351.0,
                        140.0,
                        22.0
                    ],
                    "text": "grainflow.util.stereoPan~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-39",
                        0
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "midpoints": [
                        27.5,
                        297.5,
                        70.5,
                        297.5
                    ],
                    "source": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "source": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-45",
                        0
                    ],
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        3
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-44",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        0
                    ],
                    "source": [
                        "obj-44",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-44",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        0
                    ],
                    "source": [
                        "obj-45",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-51",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        1
                    ],
                    "source": [
                        "obj-52",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-51",
                        0
                    ],
                    "source": [
                        "obj-54",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-60",
                        0
                    ],
                    "source": [
                        "obj-55",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-54",
                        0
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-55",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        0
                    ],
                    "source": [
                        "obj-60",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-4": [
                "live.dial",
                "sustain",
                0
            ],
            "obj-45": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "Grainflow.voice~.mxe64",
                "type": "mx64"
            },
            {
                "name": "clarinetA3.wav",
                "bootpath": "~/Documents/Max 8/Packages/dada/media",
                "patcherrelativepath": "../../../../../dada/media",
                "type": "WAVE",
                "implicit": 1
            },
            {
                "name": "grainFlow~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.live~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereoPan~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.waveform~.mxe64",
                "type": "mx64"
            },
            {
                "name": "thru.maxpat",
                "bootpath": "C74:/patchers/m4l/Pluggo for Live resources/patches",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [
                    "obj-36",
                    "obj-35"
                ]
            },
            {
                "boxes": [
                    "obj-47",
                    "obj-46"
                ]
            },
            {
                "boxes": [
                    "obj-7",
                    "obj-5"
                ]
            }
        ]
    }
}