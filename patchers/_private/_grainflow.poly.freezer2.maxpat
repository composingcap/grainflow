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
            535.0,
            217.0,
            1343.0,
            595.0
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
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        299.6666666666667,
                        442.0,
                        31.0,
                        22.0
                    ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        299.6666666666667,
                        406.0,
                        62.0,
                        22.0
                    ],
                    "text": "route mute"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        744.5,
                        185.0,
                        131.0,
                        22.0
                    ],
                    "text": "value #0_buffersize 1000"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        712.0,
                        140.0,
                        91.0,
                        22.0
                    ],
                    "text": "route length adsr"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        292.0,
                        322.0,
                        38.0,
                        22.0
                    ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        276.0,
                        298.0,
                        40.0,
                        22.0
                    ],
                    "text": "unjoin"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        281.0,
                        266.0,
                        76.0,
                        22.0
                    ],
                    "text": "r #0_newnote"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        514.0,
                        161.0,
                        30.0,
                        22.0
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        506.0,
                        137.0,
                        76.0,
                        22.0
                    ],
                    "text": "r #0_newnote"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        502.0,
                        204.0,
                        131.0,
                        22.0
                    ],
                    "text": "value #0_buffersize 1000"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800.5,
                        406.0,
                        70.0,
                        22.0
                    ],
                    "text": "s #0_noteoff"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        820.5,
                        357.0,
                        77.0,
                        22.0
                    ],
                    "text": "s #0_newnote"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        666.0,
                        258.0,
                        54.0,
                        22.0
                    ],
                    "text": "mute 1, 0"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        605.0,
                        253.0,
                        54.0,
                        22.0
                    ],
                    "text": "mute 0, 1"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        736.0,
                        224.0,
                        29.5,
                        22.0
                    ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        800.5,
                        289.0,
                        29.5,
                        22.0
                    ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        800.5,
                        265.0,
                        29.5,
                        22.0
                    ],
                    "text": "> 0"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        786.0,
                        229.0,
                        48.0,
                        22.0
                    ],
                    "text": "unjoin 2"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        800.5,
                        325.0,
                        39.0,
                        22.0
                    ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        110.0,
                        442.0,
                        40.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": ""
                    },
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        110.0,
                        402.0,
                        29.5,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        247.0,
                        357.0,
                        98.0,
                        22.0
                    ],
                    "text": "adsr~ 500 0 0 500"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        432.0,
                        253.0,
                        53.0,
                        22.0
                    ],
                    "text": "thispoly~"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        502.0,
                        258.0,
                        42.0,
                        22.0
                    ],
                    "text": "size $1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        143.0,
                        279.0,
                        55.0,
                        22.0
                    ],
                    "text": "clip~ 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        145.0,
                        245.0,
                        44.0,
                        22.0
                    ],
                    "text": "-~ 0.05"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        666.0,
                        161.0,
                        26.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": ""
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        143.66666666666669,
                        119.0,
                        33.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": ""
                    },
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        47.0,
                        204.0,
                        63.0,
                        22.0
                    ],
                    "text": "phasor~ 10"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        143.66666666666669,
                        218.0,
                        29.5,
                        22.0
                    ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        324.0,
                        204.0,
                        80.0,
                        22.0
                    ],
                    "text": "scale~ -1 1 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        456.0,
                        174.0,
                        40.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        506.0,
                        286.0,
                        124.0,
                        22.0
                    ],
                    "text": "buffer~ #0_freeze 1000"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        143.66666666666669,
                        165.0,
                        279.0,
                        22.0
                    ],
                    "text": "grainflow.util.record~ #0_freeze @loop 0 @resetMode 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        110.0,
                        357.0,
                        85.0,
                        22.0
                    ],
                    "text": "mc.mixdown~ 1"
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
                        110.0,
                        314.0,
                        120.0,
                        22.0
                    ],
                    "text": "grainflow~ #0_freeze 4"
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
                        "obj-58",
                        0
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
                        "obj-39",
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
                        "obj-6",
                        4
                    ],
                    "order": 0,
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-32",
                        0
                    ],
                    "source": [
                        "obj-31",
                        0
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
                        "obj-32",
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
                        "obj-34",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-39",
                        1
                    ],
                    "source": [
                        "obj-36",
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
                        "obj-36",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-40",
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
                        "obj-50",
                        0
                    ],
                    "source": [
                        "obj-41",
                        1
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
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-43",
                        0
                    ],
                    "source": [
                        "obj-42",
                        1
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
                        "obj-43",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-41",
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
                        "obj-41",
                        1
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
                        "obj-42",
                        0
                    ],
                    "source": [
                        "obj-45",
                        1
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
                        "obj-47",
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
                        "obj-49",
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
                        "obj-34",
                        0
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
                        "obj-54",
                        0
                    ],
                    "source": [
                        "obj-53",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
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
                        "obj-52",
                        0
                    ],
                    "source": [
                        "obj-54",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-56",
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
                        "obj-57",
                        0
                    ],
                    "source": [
                        "obj-56",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "source": [
                        "obj-57",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        1
                    ],
                    "source": [
                        "obj-58",
                        1
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
                        "obj-58",
                        2
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
                        "obj-58",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        1
                    ],
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-61",
                        0
                    ],
                    "source": [
                        "obj-60",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        0
                    ],
                    "source": [
                        "obj-61",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-31",
                        0
                    ],
                    "source": [
                        "obj-7",
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
                        "obj-3",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "grainflow~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": ".",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": ".",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "./util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}