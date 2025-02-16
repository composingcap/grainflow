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
            644.0,
            480.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "grainflow.spatview~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        188.0,
                        309.0,
                        300.0,
                        120.0
                    ],
                    "speakerPositions": [
                        -0.4,
                        1.0,
                        0.0,
                        0.4,
                        1.0,
                        0.0,
                        -1.0,
                        0.4,
                        0.0,
                        1.0,
                        0.4,
                        0.0,
                        -1.0,
                        -0.4,
                        0.0,
                        1.0,
                        -0.4,
                        0.0,
                        -0.4,
                        -1.0,
                        0.0,
                        0.4,
                        -1.0,
                        0.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
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
                            557.0,
                            217.0,
                            1343.0,
                            480.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        152.0,
                                        78.0,
                                        22.0
                                    ],
                                    "text": "scale -1. 1. 0 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        124.0,
                                        74.0,
                                        22.0
                                    ],
                                    "text": "snapshot~ 33"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "cycle~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        234.0,
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
                                        "obj-13",
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
                                        "obj-15",
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
                                        "obj-17",
                                        0
                                    ],
                                    "source": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2761"
                    },
                    "patching_rect": [
                        362.0,
                        171.0,
                        42.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 11.0,
                        "globalpatchername": ""
                    },
                    "text": "p lfo"
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
                        155.0,
                        97.0,
                        277.0,
                        22.0
                    ],
                    "text": "buffer~ _physdrag CP_Bubbling_Pasta_Sauce"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        406.0,
                        204.0,
                        93.0,
                        23.0
                    ],
                    "text": "Drag amount"
                }
            },
            {
                "box": {
                    "id": "obj-8",
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
                            535.0,
                            217.0,
                            1343.0,
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
                                        52.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        142.0,
                                        206.0,
                                        22.0
                                    ],
                                    "text": "positionRandom 0 1 0, position -1.25 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        258.0,
                                        146.0,
                                        74.0,
                                        22.0
                                    ],
                                    "text": "velocity 3 0 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        148.0,
                                        228.0,
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
                                        "obj-4",
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
                                        "obj-4",
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
                                        "obj-13",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-30",
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
                                    "order": 1,
                                    "source": [
                                        "obj-30",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2763"
                    },
                    "patching_rect": [
                        89.0,
                        199.0,
                        92.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 11.0,
                        "globalpatchername": ""
                    },
                    "text": "p physsettings"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-9",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        362.0,
                        206.0,
                        42.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        235.0,
                        237.0,
                        149.0,
                        22.0
                    ],
                    "text": "grainflow.spat.phys.drag 1"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        7.0,
                        50.0,
                        447.0,
                        32.0
                    ],
                    "text": "Grainflow.spat.phys allows for extention using the use of a lamda outlet. You can use jitter to manipulate the different dimentions of the matrix to apply custom physics. "
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        7.0,
                        6.0,
                        389.0,
                        41.0
                    ],
                    "text": "grainflow.spat.phys.drag"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        42.0,
                        368.0,
                        75.0,
                        22.0
                    ],
                    "text": "mc.*~ 0.25"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        78.0,
                        112.0,
                        54.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        42.0,
                        341.0,
                        76.0,
                        22.0
                    ],
                    "text": "mc.stereo~"
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
                                        122.0,
                                        22.0
                                    ],
                                    "text": "get \"8ch stereo pairs\""
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
                        "originid": "pat-2767"
                    },
                    "patching_rect": [
                        64.0,
                        279.0,
                        106.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p loadSpeakers"
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
                        42.0,
                        401.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        4.0,
                        86.0,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        42.0,
                        88.0,
                        71.0,
                        22.0
                    ],
                    "text": "phasor~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
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
                        42.0,
                        143.0,
                        142.0,
                        22.0
                    ],
                    "text": "grainflow~ _physdrag 10"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        "grainReset"
                    ],
                    "patching_rect": [
                        42.0,
                        309.0,
                        117.0,
                        22.0
                    ],
                    "text": "grainflow.spat.pan~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        69.0,
                        237.0,
                        132.0,
                        22.0
                    ],
                    "text": "grainflow.spat.phys 10"
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
                    "midpoints": [
                        78.5,
                        275.0,
                        51.5,
                        275.0
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
                        "obj-10",
                        0
                    ],
                    "source": [
                        "obj-2",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-22",
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
                        "obj-24",
                        0
                    ],
                    "source": [
                        "obj-22",
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
                        "obj-23",
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
                    "source": [
                        "obj-3",
                        2
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
                        "obj-32",
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
                        "obj-5",
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
                        "obj-6",
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
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-2759",
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
                "name": "_grainflow.spreadlist.maxpat",
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
                "name": "grainflow.spat.phys.drag.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat/phys",
                "patcherrelativepath": "../../patchers/spat/phys",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.phys.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat/phys",
                "patcherrelativepath": "../../patchers/spat/phys",
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
            },
            {
                "name": "jit.!-.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0
    }
}