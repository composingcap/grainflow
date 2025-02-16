{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 5,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            535.0,
            217.0,
            1343.0,
            480.0
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
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        285.0,
                        68.0,
                        40.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        207.0,
                        380.0,
                        49.0,
                        22.0
                    ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        164.5,
                        257.0,
                        129.0,
                        22.0
                    ],
                    "text": "grainflow.util.stereoPan~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        367.0,
                        121.0,
                        126.0,
                        22.0
                    ],
                    "text": "buffer~ _gffxfilter jongly"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        49.5,
                        201.0,
                        68.0,
                        171.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        86.0,
                        94.0,
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
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        188.0,
                        78.0,
                        63.0,
                        22.0
                    ],
                    "text": "phasor~ 10"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 9,
                    "outlettype": [
                        "multichannelsignal",
                        "",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        188.0,
                        123.0,
                        119.0,
                        22.0
                    ],
                    "text": "grainflow~ _gffxfilter 5"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        188.0,
                        172.0,
                        98.0,
                        22.0
                    ],
                    "text": "grainflow.fx.filter~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        1
                    ],
                    "source": [
                        "obj-1",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
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
                        "obj-1",
                        2
                    ],
                    "source": [
                        "obj-2",
                        3
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
                        "obj-2",
                        2
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
                        "obj-2",
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
                        "obj-2",
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
                        "obj-9",
                        0
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.xfade~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.fx.filter~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/fx",
                "patcherrelativepath": "../../patchers/fx",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.random~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereoPan~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../patchers",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}