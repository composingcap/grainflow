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
            635.0,
            511.0
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
                    "id": "obj-29",
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
                            635.0,
                            485.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "grainflow.spatview~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        196.0,
                                        312.0,
                                        300.0,
                                        120.0
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
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        119.0,
                                        138.0,
                                        51.0,
                                        23.0
                                    ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        19.0,
                                        401.0,
                                        45.0,
                                        45.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        19.0,
                                        366.0,
                                        73.0,
                                        23.0
                                    ],
                                    "text": "mc.stereo~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        54.0,
                                        375.0,
                                        32.0
                                    ],
                                    "text": "The spirograph accepts mc signals and rotates through sampling them based on the grains ID"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        7.0,
                                        392.0,
                                        41.0
                                    ],
                                    "text": "MC Singals"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        473.0,
                                        179.0,
                                        94.0,
                                        23.0
                                    ],
                                    "text": "applyvalues 0.1"
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
                                        473.0,
                                        214.0,
                                        116.0,
                                        23.0
                                    ],
                                    "text": "mc.cycle~ @chans 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        185.0,
                                        151.0,
                                        63.0,
                                        23.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        330.6666666666667,
                                        184.0,
                                        125.0,
                                        23.0
                                    ],
                                    "text": "applyvalues 0.15 0.85"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        185.0,
                                        185.0,
                                        137.0,
                                        23.0
                                    ],
                                    "text": "applyvalues 0.25 0.4 0.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        330.6666666666667,
                                        214.0,
                                        116.0,
                                        23.0
                                    ],
                                    "text": "mc.cycle~ @chans 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        184.0,
                                        221.0,
                                        116.0,
                                        23.0
                                    ],
                                    "text": "mc.cycle~ @chans 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        46.0,
                                        138.0,
                                        68.0,
                                        23.0
                                    ],
                                    "text": "phasor~ 8"
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
                                        "originid": "pat-2155"
                                    },
                                    "patching_rect": [
                                        59.0,
                                        298.0,
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
                                    "id": "obj-23",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        19.0,
                                        105.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "grainReset"
                                    ],
                                    "patching_rect": [
                                        19.0,
                                        327.0,
                                        114.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.pan~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
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
                                        19.0,
                                        176.0,
                                        136.0,
                                        23.0
                                    ],
                                    "text": "grainflow~ _spathelp 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        46.0,
                                        257.0,
                                        446.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.spirograph"
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
                                    "order": 2,
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
                                        "obj-5",
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
                                        "obj-16",
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
                                        "obj-18",
                                        0
                                    ],
                                    "midpoints": [
                                        55.5,
                                        311.0,
                                        28.5,
                                        311.0
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
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-16",
                                        2
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
                                        "obj-16",
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
                                    "midpoints": [
                                        123.5,
                                        359.0,
                                        165.0,
                                        359.0,
                                        165.0,
                                        298.0,
                                        205.5,
                                        298.0
                                    ],
                                    "source": [
                                        "obj-18",
                                        1
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
                                        "obj-18",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-25",
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
                                        "obj-16",
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
                                        "obj-16",
                                        0
                                    ],
                                    "midpoints": [
                                        55.5,
                                        165.5,
                                        28.5,
                                        165.5
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
                                        "obj-15",
                                        1
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
                                        "obj-15",
                                        2
                                    ],
                                    "source": [
                                        "obj-26",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-26",
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
                                        "obj-18",
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
                                        "obj-15",
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
                                        "obj-11",
                                        0
                                    ],
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2153"
                    },
                    "patching_rect": [
                        64.0,
                        101.0,
                        35.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p MC"
                }
            },
            {
                "box": {
                    "id": "obj-28",
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
                            635.0,
                            485.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "grainflow.spatview~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        176.0,
                                        297.0,
                                        300.0,
                                        120.0
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
                                    "bubble": 1,
                                    "id": "obj-3",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        357.0,
                                        221.85714316368103,
                                        161.0,
                                        54.0
                                    ],
                                    "text": "New positions are output whenever a grain is spawned"
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
                                        11.0,
                                        355.0,
                                        74.0,
                                        23.0
                                    ],
                                    "text": "mc.stereo~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-1",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        65.0,
                                        397.85714316368103,
                                        66.0,
                                        36.0
                                    ],
                                    "text": "Turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        45.0,
                                        84.35714316368103,
                                        128.0,
                                        25.0
                                    ],
                                    "text": "Turn on granulator"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-36",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        394.0,
                                        155.85714316368103,
                                        161.0,
                                        39.0
                                    ],
                                    "text": "Signals control grain positions in x y and z"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-13",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        333.5,
                                        160.85714316368103,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                0.1
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[2]",
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-12",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        266.5,
                                        160.85714316368103,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                0.25
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-11",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        199.5,
                                        160.85714316368103,
                                        50.0,
                                        21.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number",
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "number",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        51.0,
                                        392.0,
                                        19.0
                                    ],
                                    "text": "Creates grains based on sampled positions generated by a signal"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        7.0,
                                        392.0,
                                        41.0
                                    ],
                                    "text": "grainflow.spat.spirograph"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        103.0,
                                        117.85714316368103,
                                        45.0,
                                        23.0
                                    ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        397.85714316368103,
                                        45.0,
                                        45.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        334.0,
                                        197.85714316368103,
                                        68.0,
                                        23.0
                                    ],
                                    "text": "cycle~ 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        267.0,
                                        197.85714316368103,
                                        74.0,
                                        23.0
                                    ],
                                    "text": "cycle~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        200.0,
                                        197.85714316368103,
                                        59.0,
                                        23.0
                                    ],
                                    "text": "cycle~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        38.0,
                                        117.85714316368103,
                                        62.0,
                                        23.0
                                    ],
                                    "text": "phasor~ 8"
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
                                                    "id": "obj-1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        162.0,
                                                        119.5,
                                                        179.0,
                                                        22.0
                                                    ],
                                                    "text": "get \"16ch Stacked Stereo Pairs\""
                                                }
                                            },
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
                                                        "obj-10",
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
                                        "originid": "pat-2197"
                                    },
                                    "patching_rect": [
                                        51.0,
                                        277.85714316368103,
                                        104.0,
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
                                    "id": "obj-23",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        11.0,
                                        84.85714316368103,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "grainReset"
                                    ],
                                    "patching_rect": [
                                        11.0,
                                        317.85714316368103,
                                        115.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.pan~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        157.0,
                                        117.85714316368103,
                                        130.0,
                                        37.0
                                    ],
                                    "text": "buffer~ _spathelp jongly"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
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
                                        11.0,
                                        155.85714316368103,
                                        137.0,
                                        23.0
                                    ],
                                    "text": "grainflow~ _spathelp 16"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        133.0,
                                        235.85714316368103,
                                        220.0,
                                        23.0
                                    ],
                                    "text": "grainflow.spat.spirograph"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-25",
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
                                        "obj-26",
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
                                        "obj-27",
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
                                        "obj-18",
                                        0
                                    ],
                                    "midpoints": [
                                        142.5,
                                        262.85714316368103,
                                        20.5,
                                        262.85714316368103
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
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-16",
                                        2
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
                                        "obj-16",
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
                                        "obj-18",
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
                                    "midpoints": [
                                        116.5,
                                        351.85714316368103,
                                        153.2738093535105,
                                        351.85714316368103,
                                        153.2738093535105,
                                        278.46428591012955,
                                        185.5,
                                        278.46428591012955
                                    ],
                                    "source": [
                                        "obj-18",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-16",
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
                                        "obj-16",
                                        0
                                    ],
                                    "midpoints": [
                                        47.5,
                                        145.35714316368103,
                                        20.5,
                                        145.35714316368103
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
                                        "obj-15",
                                        1
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
                                        "obj-15",
                                        2
                                    ],
                                    "source": [
                                        "obj-26",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        3
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
                                        "obj-18",
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
                                        "obj-2",
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
                                        "obj-16",
                                        1
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2195"
                    },
                    "patching_rect": [
                        37.0,
                        65.0,
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
        "originid": "pat-2151",
        "parameters": {
            "obj-28::obj-11": [
                "number",
                "number",
                0
            ],
            "obj-28::obj-12": [
                "number[1]",
                "number[1]",
                0
            ],
            "obj-28::obj-13": [
                "number[2]",
                "number[2]",
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
                "name": "_grainflow.snapshot~.maxpat",
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
                "name": "grainflow.spat.pan~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.spirograph.maxpat",
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