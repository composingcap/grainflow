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
            288.0,
            218.0,
            1093.0,
            724.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "buffername": "u188000335",
                    "id": "obj-9",
                    "maxclass": "grainflow.waveform~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        174.0,
                        577.0,
                        709.0,
                        83.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        136.0,
                        56.0,
                        23.0
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        409.5,
                        107.0,
                        186.0,
                        25.0
                    ],
                    "text": "Meta grain length in ms"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        310.5,
                        73.0,
                        88.0,
                        37.0
                    ],
                    "text": "loadmess 4000"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        311.0,
                        136.0,
                        48.0,
                        23.0
                    ],
                    "text": "/ 1000."
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        309.5,
                        169.0,
                        30.0,
                        23.0
                    ],
                    "text": "!/ 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-67",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        310.5,
                        107.0,
                        97.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-65",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        868.0,
                        226.0,
                        140.0,
                        39.0
                    ],
                    "text": "Length of each loop in ms"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        807.0,
                        199.0,
                        81.0,
                        37.0
                    ],
                    "text": "loadmess 125"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        668.0,
                        325.0,
                        50.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-50",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        807.0,
                        234.0,
                        50.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        811.0,
                        262.0,
                        55.0,
                        23.0
                    ],
                    "text": "/ 60000."
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        668.0,
                        298.0,
                        29.5,
                        23.0
                    ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        709.0,
                        269.0,
                        68.0,
                        23.0
                    ],
                    "text": "route voice"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        689.0,
                        388.0,
                        49.0,
                        23.0
                    ],
                    "text": "+ 0.001"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        668.0,
                        419.0,
                        40.0,
                        23.0
                    ],
                    "text": "join 3"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        668.0,
                        450.0,
                        263.0,
                        37.0
                    ],
                    "text": "stream $1 startPoint $2, stream $1 stopPoint $3"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        689.0,
                        356.0,
                        103.0,
                        23.0
                    ],
                    "text": "route recordHead"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        668.0,
                        240.0,
                        60.0,
                        23.0
                    ],
                    "text": "mc.edge~"
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
                        668.0,
                        206.0,
                        75.0,
                        23.0
                    ],
                    "text": "mc.<~ 0.001"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        268.5,
                        361.0,
                        52.0,
                        23.0
                    ],
                    "text": "mc.!-~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "float",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        441.5,
                        140.0,
                        60.0,
                        23.0
                    ],
                    "text": "dspstate~"
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
                        441.5,
                        176.0,
                        64.0,
                        23.0
                    ],
                    "text": "spread 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        310.5,
                        244.5,
                        134.0,
                        23.0
                    ],
                    "text": "mc.scale~ 0 1 0.75 1.25"
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
                        310.5,
                        206.0,
                        150.0,
                        23.0
                    ],
                    "text": "mc.phasor~ 0.25 @chans 4"
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
                        268.5,
                        287.0,
                        61.0,
                        23.0
                    ],
                    "text": "mc.cycle~"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        46.0,
                        372.0,
                        21.0
                    ],
                    "text": "Create meta grains that loop along a secntion of a sound file"
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
                        373.0,
                        448.0,
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
                        225.0,
                        444.5,
                        139.0,
                        54.0
                    ],
                    "text": "Has a buffer (max delay) of 60000ms and 16 grains"
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
                        131.0,
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
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        106.83333333333334,
                        268.5,
                        85.0,
                        25.0
                    ],
                    "text": "Turn on"
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
                        268.5,
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
                        609.0,
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
                        535.0,
                        161.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ 1 @autogain 1"
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
                        107.0,
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
                    "clipheight": 29.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "FemVoice.aif",
                                "filename": "FemVoice.aif",
                                "filekind": "audiofile",
                                "id": "u498005447",
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
                        319.0,
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
                    "text": "Grainflow multiloop"
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
                        114.5,
                        368.0,
                        68.0,
                        23.0
                    ],
                    "text": "phasor~ 20"
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
                        161.0,
                        99.0,
                        23.0
                    ],
                    "text": "streamSet auto 4"
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
                        495.0,
                        141.0,
                        23.0
                    ],
                    "text": "grainflow.live~ 60000 16"
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
                        "obj-30",
                        0
                    ],
                    "midpoints": [
                        98.58333333333334,
                        528.0,
                        979.6309523809524,
                        528.0,
                        979.6309523809524,
                        351.0,
                        698.5,
                        351.0
                    ],
                    "order": 0,
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
                    "order": 1,
                    "source": [
                        "obj-1",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
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
                        "obj-7",
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
                        306.75,
                        94.5,
                        306.75
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
                        "obj-21",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-22",
                        0
                    ],
                    "midpoints": [
                        278.0,
                        320.0,
                        599.75,
                        320.0,
                        599.75,
                        195.0,
                        677.5,
                        195.0
                    ],
                    "order": 0,
                    "source": [
                        "obj-2",
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
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        3
                    ],
                    "midpoints": [
                        278.0,
                        425.5,
                        205.33333333333334,
                        425.5
                    ],
                    "source": [
                        "obj-21",
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
                        "obj-42",
                        0
                    ],
                    "source": [
                        "obj-24",
                        2
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
                        "obj-38",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-30",
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        677.5,
                        491.0,
                        83.33333333333334,
                        491.0
                    ],
                    "source": [
                        "obj-37",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-37",
                        0
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
                        "obj-38",
                        2
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
                        "obj-45",
                        1
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
                        "obj-61",
                        0
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
                        "obj-41",
                        1
                    ],
                    "midpoints": [
                        820.5,
                        382.0,
                        728.5,
                        382.0
                    ],
                    "source": [
                        "obj-48",
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
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-50",
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
                        "obj-6",
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
                        "obj-61",
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
                        "obj-62",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-71",
                        0
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
                        "obj-5",
                        0
                    ],
                    "source": [
                        "obj-70",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        0
                    ],
                    "source": [
                        "obj-71",
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
                        "obj-72",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-6",
        "dependency_cache": [
            {
                "name": "FemVoice.aif",
                "bootpath": "C74:/patchers/m4l/Pluggo for Live resources/samples",
                "type": "AIFF",
                "implicit": 1
            },
            {
                "name": "grainflow.live~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow.waveform~.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0
    }
}