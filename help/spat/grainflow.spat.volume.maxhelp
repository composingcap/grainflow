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
            1135.0,
            678.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                            0.0,
                            26.0,
                            1135.0,
                            652.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "grainflow.spatview~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        189.0,
                                        417.0,
                                        422.0,
                                        169.0
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
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        40.0,
                                        518.0,
                                        73.0,
                                        23.0
                                    ],
                                    "text": "mc.stereo~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        281.66666666666663,
                                        312.0,
                                        171.0,
                                        19.0
                                    ],
                                    "text": "Select what parts to sample"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        256.0,
                                        312.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        205.66666666666663,
                                        244.0,
                                        137.0,
                                        19.0
                                    ],
                                    "text": "output the matrix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        180.0,
                                        244.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        370.33333333333326,
                                        216.0,
                                        137.0,
                                        19.0
                                    ],
                                    "text": "select a mesh"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        344.66666666666663,
                                        216.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        69.0,
                                        101.0,
                                        137.0,
                                        19.0
                                    ],
                                    "text": "Turn on the granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        43.33333333333337,
                                        101.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        51.0,
                                        366.0,
                                        32.0
                                    ],
                                    "text": "You can sample the vertices of an input jitter matrix formated as a mesh.\nThe first three dimentions should be vertex position in XYZ format."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        8.0,
                                        355.0,
                                        41.0
                                    ],
                                    "text": "Mesh Input"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-30",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        205.66666666666663,
                                        312.0,
                                        50.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        206.0,
                                        341.0,
                                        67.0,
                                        23.0
                                    ],
                                    "text": "phase $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "jit.pwindow",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "jit_matrix",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        257.0,
                                        157.0,
                                        48.0
                                    ],
                                    "sync": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        153.0,
                                        244.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "jit_matrix",
                                        ""
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        276.0,
                                        259.0,
                                        23.0
                                    ],
                                    "text": "jit.gl.gridshape @matrixoutput 1 @shape circle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        40.0,
                                        578.0,
                                        45.0,
                                        45.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        80.0,
                                        149.0,
                                        57.0,
                                        23.0
                                    ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        14.0,
                                        99.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        149.0,
                                        166.0,
                                        23.0
                                    ],
                                    "text": "buffer~ _spatvolume brushes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
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
                                            59.0,
                                            107.0,
                                            640.0,
                                            480.0
                                        ],
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        100.0,
                                                        58.0,
                                                        22.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        119.5,
                                                        55.0,
                                                        22.0
                                                    ],
                                                    "text": "get quad"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        100.66666666666669,
                                                        174.5,
                                                        55.0,
                                                        22.0
                                                    ],
                                                    "text": "zl.slice 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "data": {
                                                        "8ch stereo pairs": {
                                                            "speakers": {
                                                                "1": [
                                                                    -0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    -1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    0.4,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "8ch double diamond": {
                                                            "speakers": {
                                                                "1": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.5,
                                                                    0.5,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    0.5,
                                                                    -0.5,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    0,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    -0.5,
                                                                    -0.5,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    -0.5,
                                                                    0.5,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "stereo": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                0,
                                                                0
                                                            ]
                                                        },
                                                        "quad": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "5ch surround": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "7ch surround": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "16ch Stacked Stereo Pairs": {
                                                            "speakers": {
                                                                "1": [
                                                                    -0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    -1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "9": [
                                                                    -0.4,
                                                                    1,
                                                                    1
                                                                ],
                                                                "10": [
                                                                    0.4,
                                                                    1,
                                                                    1
                                                                ],
                                                                "11": [
                                                                    -1,
                                                                    0.4,
                                                                    1
                                                                ],
                                                                "12": [
                                                                    1,
                                                                    0.4,
                                                                    1
                                                                ],
                                                                "13": [
                                                                    -1,
                                                                    -0.4,
                                                                    1
                                                                ],
                                                                "14": [
                                                                    1,
                                                                    -0.4,
                                                                    1
                                                                ],
                                                                "15": [
                                                                    -0.4,
                                                                    -1,
                                                                    1
                                                                ],
                                                                "16": [
                                                                    0.4,
                                                                    -1,
                                                                    1
                                                                ]
                                                            },
                                                            "falloffDistance": 0.75,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                1
                                                            ]
                                                        }
                                                    },
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 5,
                                                    "outlettype": [
                                                        "dictionary",
                                                        "",
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        148.5,
                                                        171.0,
                                                        22.0
                                                    ],
                                                    "saved_object_attributes": {
                                                        "embed": 1,
                                                        "legacy": 1,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict speakersetups @embed 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-31",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        136.666656,
                                                        256.5,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-14",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-10",
                                                        1
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
                                                        "obj-14",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-10",
                                                        0
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
                                                        "obj-18",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-30",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-1433"
                                    },
                                    "patching_rect": [
                                        40.0,
                                        417.0,
                                        103.0,
                                        23.0
                                    ],
                                    "saved_object_attributes": {
                                        "globalpatchername": ""
                                    },
                                    "text": "p loadSpeakers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "grainReset"
                                    ],
                                    "patching_rect": [
                                        40.0,
                                        453.5,
                                        114.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.pan~"
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
                                        40.0,
                                        123.0,
                                        80.0,
                                        23.0
                                    ],
                                    "text": "phasor~ 20"
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
                                        40.0,
                                        184.0,
                                        156.0,
                                        23.0
                                    ],
                                    "text": "grainflow~ _spatvolume 20"
                                }
                            },
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
                                        80.0,
                                        371.0,
                                        126.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.volume"
                                }
                            },
                            {
                                "box": {
                                    "attr": "shape",
                                    "id": "obj-9",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        153.0,
                                        216.0,
                                        177.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-16",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        45.83333333333337,
                                        101.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-22",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        347.16666666666663,
                                        216.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-41",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        258.5,
                                        312.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-38",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.5,
                                        244.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        0
                                    ],
                                    "midpoints": [
                                        89.5,
                                        414.0,
                                        49.5,
                                        414.0
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
                                        "obj-2",
                                        0
                                    ],
                                    "midpoints": [
                                        23.5,
                                        176.0,
                                        49.5,
                                        176.0
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
                                    "midpoints": [
                                        83.75,
                                        235.0,
                                        89.5,
                                        235.0
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
                                        "obj-5",
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
                                        1
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
                                        "obj-1",
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
                                        "obj-28",
                                        0
                                    ],
                                    "source": [
                                        "obj-30",
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
                                        "obj-32",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-64",
                                        0
                                    ],
                                    "source": [
                                        "obj-33",
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
                                    "order": 1,
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        0
                                    ],
                                    "midpoints": [
                                        162.5,
                                        308.0,
                                        387.3333333333333,
                                        308.0,
                                        387.3333333333333,
                                        244.5,
                                        439.5,
                                        244.5
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        144.5,
                                        485.5,
                                        166.0,
                                        485.5,
                                        166.0,
                                        406.0,
                                        198.5,
                                        406.0
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
                                    "destination": [
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1431",
                        "boxgroups": [
                            {
                                "boxes": [
                                    "obj-6",
                                    "obj-16"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-21",
                                    "obj-22"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-37",
                                    "obj-38"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-40",
                                    "obj-41"
                                ]
                            }
                        ]
                    },
                    "patching_rect": [
                        51.0,
                        103.0,
                        44.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Mesh"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                            126.0,
                            1135.0,
                            652.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "grainflow.spatview~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        254.0,
                                        405.0,
                                        476.66666666666663,
                                        191.06471816283926
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
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        81.0,
                                        516.0,
                                        72.0,
                                        23.0
                                    ],
                                    "text": "mc.stereo~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        332.66666666666674,
                                        192.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        362.66666666666663,
                                        194.0,
                                        201.0,
                                        19.0
                                    ],
                                    "text": "Transform the volume"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        753.6666666666665,
                                        80.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        780.6666666666665,
                                        80.0,
                                        201.0,
                                        19.0
                                    ],
                                    "text": "Modify how the volume is sampled"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-49",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1031.0,
                                        204.0,
                                        83.0,
                                        68.0
                                    ],
                                    "text": "apply a rotation to the volume"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-45",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        735.0,
                                        210.0,
                                        85.0,
                                        54.0
                                    ],
                                    "text": "change the scale of the volume"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-39",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        462.5,
                                        224.0,
                                        95.49999999999994,
                                        68.0
                                    ],
                                    "text": "apply a translation to the volume"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        110.0,
                                        93.0,
                                        137.0,
                                        19.0
                                    ],
                                    "text": "Turn on the granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        398.33333333333337,
                                        76.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        84.33333333333337,
                                        93.0,
                                        25.0,
                                        19.0
                                    ],
                                    "text": "1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        428.33333333333326,
                                        78.0,
                                        201.0,
                                        19.0
                                    ],
                                    "text": "Select the shape of the volume"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        51.0,
                                        366.0,
                                        19.0
                                    ],
                                    "text": "Samples a position within a volume whenever a grain is spawned."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        8.0,
                                        355.0,
                                        41.0
                                    ],
                                    "text": "grainflow.spat.volume"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        81.0,
                                        587.0,
                                        45.0,
                                        45.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-60",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        1008.6666666666667,
                                        282.0,
                                        35.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-61",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        956.3333333333333,
                                        282.0,
                                        35.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-62",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        903.6666666666667,
                                        282.0,
                                        35.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        852.0,
                                        314.0,
                                        174.4999999999999,
                                        23.0
                                    ],
                                    "text": "pak rotateRandom 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-56",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        705.6666666666666,
                                        280.0,
                                        32.2135009765625,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-57",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        663.6666666666666,
                                        280.0,
                                        32.2135009765625,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-58",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        621.6666666666666,
                                        280.0,
                                        32.2135009765625,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        580.0,
                                        307.0,
                                        143.4999999999999,
                                        23.0
                                    ],
                                    "text": "pak scaleRandom 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-55",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        444.5,
                                        280.0,
                                        37.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-54",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        396.1666666666667,
                                        280.0,
                                        37.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        347.8333333333333,
                                        280.0,
                                        37.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300.0,
                                        307.0,
                                        162.4999999999999,
                                        23.0
                                    ],
                                    "text": "pak translateRandom 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        834.0,
                                        111.0,
                                        112.0,
                                        50.0
                                    ],
                                    "text": "Only used for 3D volumes. Adjusts a height component."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        645.0,
                                        112.0,
                                        111.0,
                                        64.0
                                    ],
                                    "text": "Cuts out the middle of a volume. 1 gets the parimeter only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        475.6666666666665,
                                        112.0,
                                        88.0,
                                        64.0
                                    ],
                                    "text": "How much of the volume is selected radially "
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-43",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        558.0,
                                        117.5,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                0.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[4]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[4]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[4]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        558.0,
                                        148.5,
                                        89.0,
                                        23.0
                                    ],
                                    "text": "innerRadius $1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-41",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        762.6666666666666,
                                        117.5,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[3]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[3]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        762.6666666666666,
                                        148.5,
                                        68.0,
                                        21.0
                                    ],
                                    "text": "elevation $1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        415.66666666666663,
                                        112.0,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[5]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[5]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        416.0,
                                        147.0,
                                        58.0,
                                        23.0
                                    ],
                                    "text": "phase $1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-34",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        990.0,
                                        218.0,
                                        33.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-35",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        937.3333333333333,
                                        218.0,
                                        33.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-36",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        884.6666666666667,
                                        218.0,
                                        33.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-30",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        693.6666666666666,
                                        218.0,
                                        31.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[2]",
                                            "parameter_mmax": 2.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-31",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        651.6666666666666,
                                        218.0,
                                        31.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_mmax": 2.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-33",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        609.6666666666666,
                                        218.0,
                                        31.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmax": 2.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-29",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        427.5,
                                        224.0,
                                        36.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-28",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        379.1666666666667,
                                        224.0,
                                        36.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-27",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        330.8333333333333,
                                        224.0,
                                        36.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        832.0,
                                        252.0,
                                        175.49999999999994,
                                        23.0
                                    ],
                                    "text": "pak rotate 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        568.0,
                                        252.0,
                                        143.49999999999994,
                                        23.0
                                    ],
                                    "text": "pak scale 1. 1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        283.0,
                                        252.0,
                                        162.49999999999994,
                                        23.0
                                    ],
                                    "text": "pak translate 0. 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        121.0,
                                        158.0,
                                        51.0,
                                        23.0
                                    ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        58.33333333333337,
                                        89.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        398.0,
                                        18.0,
                                        165.66666666666652,
                                        23.0
                                    ],
                                    "text": "buffer~ _spatvolume brushes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "items": [
                                        "circle",
                                        ",",
                                        "sphere",
                                        ",",
                                        "square",
                                        ",",
                                        "cube",
                                        ",",
                                        "torus"
                                    ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        298.0,
                                        76.0,
                                        100.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        339.0,
                                        110.0,
                                        59.0,
                                        23.0
                                    ],
                                    "text": "shape $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
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
                                            59.0,
                                            107.0,
                                            640.0,
                                            480.0
                                        ],
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        100.0,
                                                        58.0,
                                                        22.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        119.5,
                                                        55.0,
                                                        22.0
                                                    ],
                                                    "text": "get quad"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        100.66666666666669,
                                                        174.5,
                                                        55.0,
                                                        22.0
                                                    ],
                                                    "text": "zl.slice 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "data": {
                                                        "8ch stereo pairs": {
                                                            "speakers": {
                                                                "1": [
                                                                    -0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    -1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    0.4,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "8ch double diamond": {
                                                            "speakers": {
                                                                "1": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.5,
                                                                    0.5,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    0.5,
                                                                    -0.5,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    0,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    -0.5,
                                                                    -0.5,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    -0.5,
                                                                    0.5,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "stereo": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                0,
                                                                0
                                                            ]
                                                        },
                                                        "quad": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "5ch surround": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "7ch surround": {
                                                            "speakers": {
                                                                "1": [
                                                                    -1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    1,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    0,
                                                                    1,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    -1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    1,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    -1,
                                                                    0,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    1,
                                                                    0,
                                                                    0
                                                                ]
                                                            },
                                                            "falloffDistance": 1.5,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                0
                                                            ]
                                                        },
                                                        "16ch Stacked Stereo Pairs": {
                                                            "speakers": {
                                                                "1": [
                                                                    -0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "2": [
                                                                    0.4,
                                                                    1,
                                                                    0
                                                                ],
                                                                "3": [
                                                                    -1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "4": [
                                                                    1,
                                                                    0.4,
                                                                    0
                                                                ],
                                                                "5": [
                                                                    -1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "6": [
                                                                    1,
                                                                    -0.4,
                                                                    0
                                                                ],
                                                                "7": [
                                                                    -0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "8": [
                                                                    0.4,
                                                                    -1,
                                                                    0
                                                                ],
                                                                "9": [
                                                                    -0.4,
                                                                    1,
                                                                    1
                                                                ],
                                                                "10": [
                                                                    0.4,
                                                                    1,
                                                                    1
                                                                ],
                                                                "11": [
                                                                    -1,
                                                                    0.4,
                                                                    1
                                                                ],
                                                                "12": [
                                                                    1,
                                                                    0.4,
                                                                    1
                                                                ],
                                                                "13": [
                                                                    -1,
                                                                    -0.4,
                                                                    1
                                                                ],
                                                                "14": [
                                                                    1,
                                                                    -0.4,
                                                                    1
                                                                ],
                                                                "15": [
                                                                    -0.4,
                                                                    -1,
                                                                    1
                                                                ],
                                                                "16": [
                                                                    0.4,
                                                                    -1,
                                                                    1
                                                                ]
                                                            },
                                                            "falloffDistance": 0.75,
                                                            "falloffCurve": -1,
                                                            "dimmask": [
                                                                1,
                                                                1,
                                                                1
                                                            ]
                                                        }
                                                    },
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 5,
                                                    "outlettype": [
                                                        "dictionary",
                                                        "",
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        148.5,
                                                        171.0,
                                                        22.0
                                                    ],
                                                    "saved_object_attributes": {
                                                        "embed": 1,
                                                        "legacy": 1,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict speakersetups @embed 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-31",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        136.666656,
                                                        256.5,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-14",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-10",
                                                        1
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
                                                        "obj-14",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-10",
                                                        0
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
                                                        "obj-18",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-30",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-1491"
                                    },
                                    "patching_rect": [
                                        81.0,
                                        431.0,
                                        102.0,
                                        23.0
                                    ],
                                    "saved_object_attributes": {
                                        "globalpatchername": ""
                                    },
                                    "text": "p loadSpeakers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "grainReset"
                                    ],
                                    "patching_rect": [
                                        81.0,
                                        462.5,
                                        113.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.pan~"
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
                                        81.0,
                                        120.0,
                                        74.0,
                                        23.0
                                    ],
                                    "text": "phasor~ 15"
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
                                        81.0,
                                        193.0,
                                        155.0,
                                        23.0
                                    ],
                                    "text": "grainflow~ _spatvolume 16"
                                }
                            },
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
                                        121.0,
                                        380.0,
                                        125.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.volume"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-16",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        86.83333333333337,
                                        93.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-22",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400.83333333333337,
                                        76.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-73",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        335.16666666666674,
                                        192.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-66",
                                    "maxclass": "panel",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        755.6666666666665,
                                        80.0,
                                        20.0,
                                        20.0
                                    ],
                                    "shape": 1
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [
                                        0.65098,
                                        0.666667,
                                        0.662745,
                                        0.0
                                    ],
                                    "border": 2,
                                    "id": "obj-67",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        407.0,
                                        105.0,
                                        563.0,
                                        87.0
                                    ],
                                    "proportion": 0.39
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        0
                                    ],
                                    "midpoints": [
                                        130.5,
                                        423.0,
                                        90.5,
                                        423.0
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
                                        "obj-9",
                                        0
                                    ],
                                    "source": [
                                        "obj-10",
                                        1
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
                                    "midpoints": [
                                        124.5,
                                        244.0,
                                        130.5,
                                        244.0
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
                                        "obj-5",
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
                                        1
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
                                        "obj-1",
                                        0
                                    ],
                                    "midpoints": [
                                        292.5,
                                        360.0,
                                        130.5,
                                        360.0
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
                                    "midpoints": [
                                        577.5,
                                        358.0,
                                        130.5,
                                        358.0
                                    ],
                                    "source": [
                                        "obj-24",
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
                                    "midpoints": [
                                        841.5,
                                        361.0,
                                        130.5,
                                        361.0
                                    ],
                                    "source": [
                                        "obj-25",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-23",
                                        1
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
                                        "obj-23",
                                        2
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
                                        "obj-23",
                                        3
                                    ],
                                    "source": [
                                        "obj-29",
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
                                        "obj-24",
                                        3
                                    ],
                                    "source": [
                                        "obj-30",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-24",
                                        2
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
                                        "obj-5",
                                        0
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
                                        "obj-24",
                                        1
                                    ],
                                    "source": [
                                        "obj-33",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-25",
                                        3
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
                                        "obj-25",
                                        2
                                    ],
                                    "source": [
                                        "obj-35",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-25",
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
                                        "obj-1",
                                        0
                                    ],
                                    "midpoints": [
                                        425.5,
                                        177.0,
                                        272.0,
                                        177.0,
                                        272.0,
                                        361.0,
                                        231.0,
                                        361.0,
                                        231.0,
                                        366.0,
                                        130.5,
                                        366.0
                                    ],
                                    "source": [
                                        "obj-38",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-64",
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
                                        "obj-38",
                                        0
                                    ],
                                    "source": [
                                        "obj-40",
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
                                        "obj-41",
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
                                    "midpoints": [
                                        772.1666666666666,
                                        359.0,
                                        130.5,
                                        359.0
                                    ],
                                    "source": [
                                        "obj-42",
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
                                        "obj-43",
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
                                    "midpoints": [
                                        567.5,
                                        359.0,
                                        130.5,
                                        359.0
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
                                        "obj-4",
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        184.5,
                                        494.5,
                                        250.0,
                                        494.5,
                                        250.0,
                                        394.0,
                                        263.5,
                                        394.0
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
                                        "obj-1",
                                        0
                                    ],
                                    "midpoints": [
                                        309.5,
                                        360.5,
                                        130.5,
                                        360.5
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
                                        "obj-51",
                                        1
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
                                        "obj-51",
                                        2
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
                                        "obj-51",
                                        3
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
                                        "obj-59",
                                        3
                                    ],
                                    "source": [
                                        "obj-56",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-59",
                                        2
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
                                        "obj-59",
                                        1
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
                                        "obj-1",
                                        0
                                    ],
                                    "midpoints": [
                                        589.5,
                                        358.5,
                                        130.5,
                                        358.5
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
                                        "obj-63",
                                        3
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
                                        "obj-63",
                                        2
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
                                        "obj-63",
                                        1
                                    ],
                                    "source": [
                                        "obj-62",
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
                                    "midpoints": [
                                        861.5,
                                        358.5,
                                        130.5,
                                        358.5
                                    ],
                                    "source": [
                                        "obj-63",
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
                                    "midpoints": [
                                        348.5,
                                        154.0,
                                        231.0,
                                        154.0,
                                        231.0,
                                        358.0,
                                        130.5,
                                        358.0
                                    ],
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1489",
                        "boxgroups": [
                            {
                                "boxes": [
                                    "obj-15",
                                    "obj-16"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-21",
                                    "obj-22"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-52",
                                    "obj-66"
                                ]
                            },
                            {
                                "boxes": [
                                    "obj-71",
                                    "obj-73"
                                ]
                            }
                        ]
                    },
                    "patching_rect": [
                        28.0,
                        44.0,
                        55.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p General"
                }
            }
        ],
        "lines": [],
        "originid": "pat-1429",
        "parameters": {
            "obj-65::obj-30": [
                "number[2]",
                "number[2]",
                0
            ],
            "obj-65::obj-31": [
                "number[1]",
                "number[1]",
                0
            ],
            "obj-65::obj-33": [
                "number",
                "number",
                0
            ],
            "obj-65::obj-40": [
                "number[5]",
                "number[5]",
                0
            ],
            "obj-65::obj-41": [
                "number[3]",
                "number[3]",
                0
            ],
            "obj-65::obj-43": [
                "number[4]",
                "number[4]",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
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
                "name": "_grainflow.xyz2aed.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
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
                "name": "grainflow.spat.volume.maxpat",
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