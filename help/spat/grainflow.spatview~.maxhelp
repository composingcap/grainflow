{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100.0,
            100.0,
            769.0,
            599.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        392.0,
                        99.0,
                        185.0,
                        21.0
                    ],
                    "text": "Customize how spatview looks"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        48.0,
                        436.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "grainColor": [
                        0.986251711845398,
                        0.00723597407341,
                        0.02742300927639,
                        1.0
                    ],
                    "grainColor2": [
                        0.990418910980225,
                        0.500286102294922,
                        0.032855201512575,
                        1.0
                    ],
                    "id": "obj-9",
                    "maxclass": "grainflow.spatview~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        132.0,
                        330.0,
                        327.0,
                        131.0
                    ],
                    "speakerPositions": [
                        -1.0,
                        1.0,
                        0.0,
                        1.0,
                        1.0,
                        0.0,
                        -1.0,
                        -1.0,
                        0.0,
                        1.0,
                        -1.0,
                        0.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        260.0,
                        203.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        142.0,
                        485.0,
                        167.0,
                        25.0
                    ],
                    "text": "Sends a \"center\" message"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        48.0,
                        316.0,
                        80.0,
                        97.0
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
                        10.0,
                        91.0,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        126.0,
                        120.0,
                        50.0,
                        23.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        48.0,
                        120.0,
                        73.0,
                        23.0
                    ],
                    "text": "phasor~ 15"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "clear"
                    ],
                    "patching_rect": [
                        211.5,
                        237.0,
                        168.0,
                        23.0
                    ],
                    "text": "grainflow.spat.speakers quad"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        78.0,
                        210.0,
                        162.0,
                        23.0
                    ],
                    "text": "grainflow.spat.3dspread 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        "grainReset"
                    ],
                    "patching_rect": [
                        48.0,
                        253.0,
                        123.0,
                        23.0
                    ],
                    "text": "grainflow.spat.pan~"
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
                        190.0,
                        118.0,
                        177.0,
                        23.0
                    ],
                    "text": "buffer~ _gf.spatview femvoice"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 9,
                    "outlettype": [
                        "multichannelsignal",
                        "list",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        48.0,
                        158.0,
                        160.0,
                        23.0
                    ],
                    "text": "grainflow~ _gf.spatview 10"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        56.0,
                        284.0,
                        19.0
                    ],
                    "text": "GUI element used to view spatialization with grainflow"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        12.0,
                        389.0,
                        41.0
                    ],
                    "text": "grainflow.spatview~"
                }
            },
            {
                "box": {
                    "attr": "speakerOnColor",
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        126.0,
                        150.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "grainColor",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        156.0,
                        150.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "grainColor2",
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        189.0,
                        150.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "backgroundColor",
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        220.0,
                        150.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "drawCenter",
                    "id": "obj-18",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        250.0,
                        150.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "centerColor",
                    "id": "obj-19",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        387.0,
                        280.0,
                        150.0,
                        21.0
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
                        "obj-6",
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
                        0
                    ],
                    "source": [
                        "obj-11",
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
                        "obj-12",
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
                    "midpoints": [
                        396.5,
                        308.0,
                        141.5,
                        308.0
                    ],
                    "source": [
                        "obj-13",
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
                        "obj-14",
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
                    "midpoints": [
                        396.5,
                        309.0,
                        141.5,
                        309.0
                    ],
                    "source": [
                        "obj-15",
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
                    "midpoints": [
                        396.5,
                        306.5,
                        141.5,
                        306.5
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
                        "obj-9",
                        0
                    ],
                    "midpoints": [
                        396.5,
                        308.0,
                        141.5,
                        308.0
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
                        "obj-9",
                        0
                    ],
                    "midpoints": [
                        396.5,
                        307.0,
                        141.5,
                        307.0
                    ],
                    "source": [
                        "obj-18",
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
                    "midpoints": [
                        396.5,
                        309.0,
                        141.5,
                        309.0
                    ],
                    "source": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        0
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
                        "obj-24",
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
                        "obj-9",
                        0
                    ],
                    "source": [
                        "obj-4",
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
                        "obj-6",
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
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.874509803921569,
                        0.250980392156863,
                        0.717647058823529,
                        1.0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        141.5,
                        523.0,
                        29.5,
                        523.0,
                        29.5,
                        199.0,
                        87.5,
                        199.0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-2833",
        "dependency_cache": [
            {
                "name": "_grainflow.aed2xyz.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.spat.pointparse.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.3dspread.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.pan~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.speakers.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spatview~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow~.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0
    }
}