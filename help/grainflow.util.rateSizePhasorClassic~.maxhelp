{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100.0,
            100.0,
            846.0,
            655.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 11.0,
        "default_fontface": 0,
        "default_fontname": "Lato",
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
                    "numoutlets": 6,
                    "outlettype": [
                        "signal",
                        "bang",
                        "int",
                        "float",
                        "",
                        "list"
                    ],
                    "patching_rect": [
                        355.0,
                        266.0,
                        71.5,
                        22.0
                    ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
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
                        41.0,
                        466.0,
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
                    "id": "obj-20",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        7.000000000000036,
                        113.0,
                        24.0,
                        24.0
                    ],
                    "uncheckedcolor": [
                        0.694117647058824,
                        0.694117647058824,
                        0.694117647058824,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        41.0,
                        533.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        41.0,
                        420.0,
                        145.0,
                        22.0
                    ],
                    "text": "grainflow.util.stereoPan~ 20"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        93.0,
                        334.0,
                        40.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        187.66666666666663,
                        367.0,
                        120.0,
                        22.0
                    ],
                    "text": "buffer~ rsphasor anton"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 8,
                    "outlettype": [
                        "multichannelsignal",
                        "",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        41.0,
                        367.0,
                        120.0,
                        22.0
                    ],
                    "text": "grainflow~ rsphasor 20"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        237.0,
                        113.0,
                        78.0,
                        22.0
                    ],
                    "text": "loadmess 125"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        41.0,
                        118.0,
                        72.0,
                        22.0
                    ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        12.0,
                        59.0,
                        443.0,
                        33.0
                    ],
                    "text": "A utility that translates grain rate and grain size to the phasor overlap model used in grain flow for grain scheduling"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        12.0,
                        10.0,
                        443.0,
                        42.0
                    ],
                    "text": "grainflow.util.rateSizePhasor~ "
                }
            },
            {
                "box": {
                    "bgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.99
                    ],
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        93.0,
                        299.0,
                        150.0,
                        33.0
                    ],
                    "text": "The grain clocks as mc signals and some messages"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        277.66666666666663,
                        195.0,
                        305.0,
                        20.0
                    ],
                    "text": "argumnents: rate, size",
                    "textcolor": [
                        0.392156862745098,
                        0.392156862745098,
                        0.392156862745098,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        360.66666666666663,
                        326.0,
                        338.0,
                        70.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        292.16666666666663,
                        224.0,
                        150.0,
                        24.0
                    ],
                    "text": "Resultant overlap"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-34",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        237.0,
                        224.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        288.66666666666663,
                        141.0,
                        107.99999999999997,
                        24.0
                    ],
                    "text": "Grain Size (ms)"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        93.0,
                        141.0,
                        107.0,
                        24.0
                    ],
                    "text": "Grain Rate (hz)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-28",
                    "maxclass": "flonum",
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        237.0,
                        141.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        41.0,
                        141.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        41.0,
                        195.0,
                        223.0,
                        22.0
                    ],
                    "text": "grainflow.util.rateSizePhasorClassic~ 20 125"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
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
                        "obj-17",
                        1
                    ],
                    "source": [
                        "obj-12",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        1
                    ],
                    "source": [
                        "obj-16",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-23",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "source": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-18",
                        0
                    ],
                    "source": [
                        "obj-23",
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
                    "order": 0,
                    "source": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-34",
                        0
                    ],
                    "source": [
                        "obj-24",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-24",
                        0
                    ],
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-24",
                        1
                    ],
                    "source": [
                        "obj-28",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
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
                        "obj-28",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-23": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.util.rateSizePhasorClassic~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereoPan~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../patchers",
                "type": "JSON",
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