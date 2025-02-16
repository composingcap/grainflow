{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 1,
            "revision": 11,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            86.0,
            91.0,
            1019.0,
            500.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 10.0,
        "default_fontface": 0,
        "default_fontname": "Futura Medium",
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
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        18.0,
                        48.0,
                        59.0,
                        21.0
                    ],
                    "text": "mc.pack~"
                }
            },
            {
                "box": {
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u260003611",
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
                    "id": "obj-5",
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
                        18.0,
                        9.0,
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
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "maxclass": "bpatcher",
                    "name": "grainflow.readymade.shuffle~.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        18.0,
                        77.0,
                        534.0,
                        209.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
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
                        22.0,
                        288.0,
                        136.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
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
                    "elementcolor": [
                        0.694117647058824,
                        0.694117647058824,
                        0.694117647058824,
                        1.0
                    ],
                    "id": "obj-3",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        22.0,
                        337.0,
                        45.0,
                        45.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-4",
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
                        "obj-3",
                        0
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
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-5",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-5",
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
                        "obj-6",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-1::obj-106": [
                "envelope",
                "Evelope",
                0
            ],
            "obj-1::obj-116": [
                "state",
                "state",
                0
            ],
            "obj-1::obj-39": [
                "grainSize",
                "Grain Size",
                0
            ],
            "obj-1::obj-41": [
                "delayMin",
                "Delay",
                0
            ],
            "obj-1::obj-49": [
                "delayRandom",
                "Random Delay",
                0
            ],
            "obj-1::obj-50": [
                "stereoSpread",
                "Stereo Spread",
                0
            ],
            "obj-1::obj-51": [
                "density",
                "Density",
                0
            ],
            "obj-1::obj-61": [
                "feedback",
                "Feedback",
                0
            ],
            "obj-1::obj-68": [
                "grainSizeRandom",
                "grainSizeRandom",
                0
            ],
            "obj-1::obj-71": [
                "transposerandom",
                "Random Transpose",
                0
            ],
            "obj-1::obj-92": [
                "space",
                "Space",
                0
            ],
            "obj-1::obj-97": [
                "live.tab",
                "live.tab",
                0
            ],
            "obj-4": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "parameter_overrides": {
                "obj-1::obj-68": {
                    "parameter_initial": 0,
                    "parameter_longname": "grainSizeRandom",
                    "parameter_range": [
                        0.0,
                        100.0
                    ],
                    "parameter_shortname": "grainSizeRandom",
                    "parameter_unitstyle": 5
                }
            },
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.readymade.shuffle~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/readymades",
                "patcherrelativepath": "../../../patchers/readymades",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainFlow.waveform~.js",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/jsui",
                "patcherrelativepath": "../../../jsui",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "grainflow~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "pan2.maxpat",
                "bootpath": "~/AppData/Roaming/Cycling '74/Max 8/examples/spatialization/panning/lib",
                "patcherrelativepath": "../../../../../../../AppData/Roaming/Cycling '74/Max 8/examples/spatialization/panning/lib",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "anton.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            },
            {
                "name": "FemVoice.aif",
                "bootpath": "C74:/patchers/m4l/Pluggo for Live resources/samples",
                "type": "AIFF",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "editing_bgcolor": [
            0.956862745098039,
            0.956862745098039,
            0.956862745098039,
            1.0
        ]
    }
}