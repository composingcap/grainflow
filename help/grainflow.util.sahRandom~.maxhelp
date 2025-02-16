{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            985.0,
            586.0,
            562.0,
            597.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
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
                    "bubble": 1,
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        41.571428571428555,
                        81.0,
                        150.0,
                        25.0
                    ],
                    "text": "Turn on"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        296.0,
                        241.5,
                        150.0,
                        21.0
                    ],
                    "text": "Args: Min Max"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3.0,
                        45.0,
                        461.0,
                        21.0
                    ],
                    "text": "Generate random signals within a range whenever a grain is turned off"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3.0,
                        1.0,
                        503.0,
                        42.0
                    ],
                    "text": "grainflow.util.sahRandom~"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        117.0,
                        119.0,
                        43.0,
                        23.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        50.0,
                        119.0,
                        61.0,
                        23.0
                    ],
                    "text": "phasor~ 8"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        11.0,
                        81.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        48.571428571428555,
                        433.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        48.571428571428555,
                        405.0,
                        82.0,
                        23.0
                    ],
                    "text": "mc.mixdown~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "lastchannelcount": 4,
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
                        48.571428571428555,
                        323.0,
                        136.0,
                        59.0
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
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        48.571428571428555,
                        272.0,
                        61.0,
                        23.0
                    ],
                    "text": "mc.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        175.0,
                        119.0,
                        167.0,
                        23.0
                    ],
                    "text": "buffer~ _gf_sahRandom anton"
                }
            },
            {
                "box": {
                    "id": "obj-1",
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
                        50.0,
                        169.0,
                        161.0,
                        23.0
                    ],
                    "text": "grainflow~ _gf_sahRandom 4"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        90.57142857142856,
                        240.5,
                        197.0,
                        23.0
                    ],
                    "text": "grainflow.util.sahRandom~ 200 800"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-3",
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
                        "obj-67",
                        0
                    ],
                    "source": [
                        "obj-1",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        1
                    ],
                    "source": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
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
                        "obj-5",
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
                        "obj-3",
                        1
                    ],
                    "source": [
                        "obj-67",
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
                        "obj-8",
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
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-4": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.util.sahRandom~.maxpat",
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
            }
        ],
        "autosave": 0
    }
}