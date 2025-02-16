{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            1330.0,
            578.0,
            1082.0,
            597.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Lato Medium",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "maxclass": "jit.cellblock",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [
                        "list",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        592.0,
                        367.0,
                        200.0,
                        200.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        15.0,
                        137.0,
                        32.0,
                        23.0
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        112.0,
                        56.0,
                        23.0
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        46.0,
                        372.0,
                        35.0
                    ],
                    "text": "This patch demonstrates how to use the streams system within grainflow to create a multitap vdelay. "
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        364.0,
                        401.0,
                        150.0,
                        35.0
                    ],
                    "text": "There are 2 grains per delay / stream",
                    "textcolor": [
                        0.368627450980392,
                        0.368627450980392,
                        0.368627450980392,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-27",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        216.0,
                        397.5,
                        143.0,
                        54.0
                    ],
                    "text": "Has a buffer (max delay) of 5000ms and 10 grains"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-26",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        112.16666666666669,
                        153.0,
                        139.0,
                        39.0
                    ],
                    "text": "Sets the grainflow to have 5 streams"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        413.0,
                        269.0,
                        173.0,
                        39.0
                    ],
                    "text": "Sets the delay for each stream"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-24",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        564.0,
                        145.5,
                        128.0,
                        54.0
                    ],
                    "text": "Set delay times. Samples on new grains."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        106.83333333333334,
                        223.5,
                        85.0,
                        25.0
                    ],
                    "text": "Turn on"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        223.5,
                        56.0,
                        21.0
                    ],
                    "text": "0 ms"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        131.0,
                        56.0,
                        21.0
                    ],
                    "text": "5000 ms"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        293.0,
                        104.0,
                        170.0,
                        23.0
                    ],
                    "text": "zl.reg 250 333 759 2507 4250"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        73.83333333333334,
                        223.5,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        73.83333333333334,
                        522.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        73.83333333333334,
                        468.0,
                        151.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ @autogain 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        15.0,
                        83.0,
                        56.0,
                        37.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "accentcolor": [
                        0.258823529411765,
                        0.258823529411765,
                        0.258823529411765,
                        1.0
                    ],
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "jongly.aif",
                                "filename": "jongly.aif",
                                "filekind": "audiofile",
                                "id": "u842001024",
                                "selection": [
                                    0.0,
                                    1.0
                                ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "followglobaltempo": 0,
                    "formantcorrection": 0,
                    "id": "obj-12",
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
                        85.0,
                        305.0,
                        150.0,
                        30.0
                    ],
                    "pitchcorrection": 0,
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    },
                    "timestretch": [
                        0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        293.0,
                        269.0,
                        110.0,
                        23.0
                    ],
                    "text": "stream $1 delay $2"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        7.0,
                        290.0,
                        35.0
                    ],
                    "text": "Grainflow vmultitap"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "list"
                    ],
                    "patching_rect": [
                        293.0,
                        238.0,
                        67.0,
                        23.0
                    ],
                    "text": "listfunnel 1"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-5",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        293.0,
                        131.0,
                        269.0,
                        100.0
                    ],
                    "setminmax": [
                        0.0,
                        5000.0
                    ],
                    "size": 5,
                    "spacing": 2,
                    "thickness": 5
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        112.16666666666669,
                        351.0,
                        61.0,
                        23.0
                    ],
                    "text": "phasor~ 5"
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
                        15.0,
                        169.5,
                        99.0,
                        23.0
                    ],
                    "text": "streamSet auto 5"
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
                        73.83333333333334,
                        413.0,
                        134.0,
                        23.0
                    ],
                    "text": "grainflow.live~ 5000 10"
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
                        "obj-1",
                        8
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
                        302.5,
                        390.5,
                        83.33333333333334,
                        390.5
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
                        0
                    ],
                    "midpoints": [
                        94.5,
                        392.5,
                        83.33333333333334,
                        392.5
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
                        "obj-15",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-14",
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
                    "order": 1,
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
                    "order": 1,
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
                    "midpoints": [
                        83.33333333333334,
                        275.75,
                        94.5,
                        275.75
                    ],
                    "order": 0,
                    "source": [
                        "obj-17",
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
                        "obj-18",
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
                    "source": [
                        "obj-2",
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
                        24.5,
                        390.0,
                        83.33333333333334,
                        390.0
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
                        "obj-1",
                        1
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
                        "obj-10",
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
                        "obj-18",
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
                        "obj-3",
                        0
                    ],
                    "source": [
                        "obj-7",
                        1
                    ]
                }
            }
        ],
        "originid": "pat-6",
        "dependency_cache": [
            {
                "name": "grainflow.live~.mxe64",
                "type": "mx64"
            },
            {
                "name": "jongly.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}