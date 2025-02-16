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
            1602.0,
            381.0,
            1249.0,
            857.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "bang",
                        "int"
                    ],
                    "patching_rect": [
                        661.0,
                        446.0,
                        59.0,
                        23.0
                    ],
                    "text": "t 1 b 0"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        661.0,
                        414.0,
                        89.0,
                        23.0
                    ],
                    "text": "r #0_reset"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.0,
                        486.0,
                        118.0,
                        23.0
                    ],
                    "text": "voices 0, voices #2"
                }
            },
            {
                "box": {
                    "id": "obj-1",
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
                            86.0,
                            91.0,
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
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        61.63313007354736,
                                        168.0,
                                        29.5,
                                        22.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        179.63313007354736,
                                        138.0,
                                        142.0,
                                        22.0
                                    ],
                                    "text": "v #0_freezeExpandTime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        61.63313007354736,
                                        138.0,
                                        111.0,
                                        22.0
                                    ],
                                    "text": "v #0_freezeDepth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        534.6341460347176,
                                        97.0,
                                        22.0
                                    ],
                                    "text": "s #0_grainFlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        61.63313007354736,
                                        100.0,
                                        99.0,
                                        22.0
                                    ],
                                    "text": "r #0_newfreeze"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        50.13313007354736,
                                        421.6829268336296,
                                        41.0,
                                        22.0
                                    ],
                                    "text": "* 0.75"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        54.76626014709473,
                                        307.0,
                                        29.733739852905273,
                                        22.0
                                    ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        65.5,
                                        349.6829268336296,
                                        33.0,
                                        22.0
                                    ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        457.6829268336296,
                                        29.5,
                                        22.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        56.5,
                                        221.0,
                                        51.0,
                                        22.0
                                    ],
                                    "text": "0, $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        54.76626014709473,
                                        253.0,
                                        56.0,
                                        22.0
                                    ],
                                    "text": "line 0. 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        490.6829268336296,
                                        136.0,
                                        22.0
                                    ],
                                    "text": "delayRandom $1, delay $2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-67",
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
                                        "obj-49",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-19",
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
                                    "order": 0,
                                    "source": [
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-55",
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
                                        "obj-55",
                                        1
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
                                        "obj-27",
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
                                        "obj-63",
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
                                        "obj-69",
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
                                        "obj-60",
                                        0
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
                                        "obj-53",
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
                                        "obj-67",
                                        1
                                    ],
                                    "source": [
                                        "obj-68",
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
                                        "obj-69",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-68",
                                        0
                                    ],
                                    "source": [
                                        "obj-69",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1500",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        234.0,
                        72.0,
                        115.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ],
                        "fontname": "Lato",
                        "fontsize": 11.0,
                        "globalpatchername": ""
                    },
                    "text": "p freezeExpander"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        484.0,
                        202.74796748161316,
                        89.0,
                        23.0
                    ],
                    "text": "r #0_adsr"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        939.0,
                        406.6829268336296,
                        134.0,
                        23.0
                    ],
                    "text": "s #0_voiceNumber"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        939.0,
                        164.0,
                        137.0,
                        23.0
                    ],
                    "text": "pipe 0 @delaytime 25"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        939.0,
                        205.0,
                        49.0,
                        23.0
                    ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        939.0,
                        136.0,
                        96.0,
                        23.0
                    ],
                    "text": "routepass 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        742.0,
                        95.68292683362961,
                        59.0,
                        23.0
                    ],
                    "text": "del 25"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        742.0,
                        127.93495935201645,
                        49.0,
                        23.0
                    ],
                    "text": "i"
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
                        100.0,
                        396.74796748161316,
                        99.0,
                        23.0
                    ],
                    "text": "sah~ 0.00001"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        229.0,
                        39.0,
                        152.0,
                        23.0
                    ],
                    "text": "v #0_freezeDepth 100"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        229.0,
                        6.0,
                        184.0,
                        23.0
                    ],
                    "text": "v #0_freezeExpandTime 500"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        474.0,
                        354.74796748161316,
                        51.0,
                        23.0
                    ],
                    "text": "t 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        474.0,
                        408.74796748161316,
                        120.0,
                        23.0
                    ],
                    "text": "s #0_grainState"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        474.0,
                        320.74796748161316,
                        51.0,
                        23.0
                    ],
                    "text": "sel 1"
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
                        474.0,
                        281.74796748161316,
                        84.0,
                        23.0
                    ],
                    "text": "route mute"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        234.0,
                        103.0,
                        118.0,
                        23.0
                    ],
                    "text": "r #0_newfreeze"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        234.0,
                        131.0,
                        41.0,
                        23.0
                    ],
                    "text": "t 1"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        234.0,
                        154.0,
                        120.0,
                        23.0
                    ],
                    "text": "s #0_grainState"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        415.0,
                        202.74796748161316,
                        58.0,
                        23.0
                    ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        415.0,
                        175.74796748161316,
                        82.0,
                        23.0
                    ],
                    "text": "r #0_vel"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        31.0,
                        223.0,
                        83.0,
                        23.0
                    ],
                    "text": "s #0_vel"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "int",
                        "int",
                        "bang"
                    ],
                    "patching_rect": [
                        90.0,
                        179.0,
                        70.0,
                        23.0
                    ],
                    "text": "t b i i b"
                }
            },
            {
                "box": {
                    "id": "obj-29",
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
                        414.0,
                        246.74796748161316,
                        122.0,
                        23.0
                    ],
                    "text": "adsr~ 500 0 1 500"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        610.0,
                        195.8861785531044,
                        116.0,
                        23.0
                    ],
                    "text": "s #0_grainFlow"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        57.0,
                        446.0,
                        55.0,
                        23.0
                    ],
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        99.0,
                        346.0,
                        55.0,
                        23.0
                    ],
                    "text": "in~ 2"
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
                        242.0,
                        446.0,
                        55.0,
                        23.0
                    ],
                    "text": "in~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        100.0,
                        284.6829268336296,
                        119.0,
                        23.0
                    ],
                    "text": "s #0_newfreeze"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        100.0,
                        258.0,
                        51.0,
                        23.0
                    ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        100.0,
                        221.0,
                        49.0,
                        23.0
                    ],
                    "text": "> 0"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        79.0,
                        154.0,
                        59.0,
                        23.0
                    ],
                    "text": "unjoin"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "bang"
                    ],
                    "patching_rect": [
                        728.0,
                        72.61788618564606,
                        49.0,
                        23.0
                    ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        181.0,
                        441.0,
                        55.0,
                        23.0
                    ],
                    "text": "in~ 3"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        44.0,
                        320.74796748161316,
                        115.0,
                        23.0
                    ],
                    "text": "r #0_grainFlow"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                            745.0,
                            815.0,
                            1270.0,
                            480.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        394.0,
                                        200.74796748161316,
                                        71.0,
                                        22.0
                                    ],
                                    "text": "s #0_reset"
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
                                        291.0,
                                        164.0,
                                        39.0,
                                        22.0
                                    ],
                                    "text": "reload"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        291.0,
                                        200.74796748161316,
                                        94.0,
                                        22.0
                                    ],
                                    "text": "s #0_grainFlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        240.5,
                                        365.0,
                                        142.0,
                                        22.0
                                    ],
                                    "text": "v #0_freezeExpandTime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        177.0,
                                        338.0,
                                        111.0,
                                        22.0
                                    ],
                                    "text": "v #0_freezeDepth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        304.0,
                                        388.0,
                                        97.0,
                                        22.0
                                    ],
                                    "text": "s #0_grainFlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        141.0,
                                        121.0,
                                        22.0
                                    ],
                                    "text": "route bang reload reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        388.0,
                                        98.0,
                                        22.0
                                    ],
                                    "text": "s #0_transpose"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        259.0,
                                        47.0,
                                        22.0
                                    ],
                                    "text": "dict.iter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        152.0,
                                        176.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "prepend replace"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
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
                                        228.0,
                                        50.5,
                                        22.0
                                    ],
                                    "saved_object_attributes": {
                                        "embed": 0,
                                        "legacy": 1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        97.0,
                                        351.0,
                                        71.0,
                                        22.0
                                    ],
                                    "text": "s #0_adsr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        297.0,
                                        273.0,
                                        22.0
                                    ],
                                    "text": "route transpose adsr freezeDepth freezeExpandTime"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-52",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        40.0,
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
                                        "obj-37",
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
                                        "obj-38",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        3
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
                                    "source": [
                                        "obj-1",
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
                                        "obj-19",
                                        4
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
                                        "obj-19",
                                        1
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
                                        "obj-19",
                                        2
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
                                        "obj-19",
                                        3
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
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-19",
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
                                        "obj-22",
                                        0
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
                                        "obj-58",
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
                                        0
                                    ],
                                    "source": [
                                        "obj-52",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1502"
                    },
                    "patching_rect": [
                        14.0,
                        179.0,
                        75.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 11.0,
                        "globalpatchername": ""
                    },
                    "text": "p params"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        610.0,
                        39.0,
                        116.0,
                        23.0
                    ],
                    "text": "r #0_transpose"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        57.0,
                        626.0,
                        62.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": ""
                    },
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        14.0,
                        120.0,
                        103.0,
                        23.0
                    ],
                    "text": "route grainflow"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        14.0,
                        25.0,
                        85.0,
                        23.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        59.0,
                        120.0,
                        23.0
                    ],
                    "text": "s #0_grainState"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        939.0,
                        236.0,
                        49.0,
                        23.0
                    ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        939.0,
                        265.0,
                        49.0,
                        23.0
                    ],
                    "text": "join"
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
                        939.0,
                        314.0,
                        121.0,
                        23.0
                    ],
                    "text": "mute $1, $2, bang"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        728.0,
                        48.0,
                        119.0,
                        23.0
                    ],
                    "text": "r #0_grainState"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        57.0,
                        577.0,
                        49.0,
                        23.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        939.0,
                        110.68292683362961,
                        119.0,
                        23.0
                    ],
                    "text": "r #0_grainState"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        939.0,
                        363.0,
                        75.0,
                        23.0
                    ],
                    "text": "thispoly~"
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
                        14.0,
                        90.0,
                        46.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": ""
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        57.0,
                        525.0,
                        109.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ 1"
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
                        610.0,
                        71.0,
                        130.0,
                        23.0
                    ],
                    "text": "expr pow(2\\, $f1/12)"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        610.0,
                        108.0,
                        64.0,
                        23.0
                    ],
                    "text": "rate $1"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        742.0,
                        155.04878079891205,
                        71.0,
                        23.0
                    ],
                    "text": "state $1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
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
                        57.0,
                        482.63414603471756,
                        223.0,
                        23.0
                    ],
                    "text": "grainFlow~ #1 #2 @liveMode 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-44",
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
                        "obj-22",
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
                        "obj-3",
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
                        "obj-32",
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
                        "obj-13",
                        0
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
                        "obj-18",
                        0
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
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-14",
                        3
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
                        "obj-24",
                        0
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
                        "obj-47",
                        1
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
                        "obj-70",
                        0
                    ],
                    "source": [
                        "obj-22",
                        1
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
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-14",
                        1
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
                        "obj-29",
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
                        "obj-14",
                        0
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
                        "obj-14",
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
                        "obj-10",
                        1
                    ],
                    "midpoints": [
                        423.5,
                        563.8739837408066,
                        96.5,
                        563.8739837408066
                    ],
                    "order": 1,
                    "source": [
                        "obj-29",
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
                    "midpoints": [
                        423.5,
                        375.74796748161316,
                        189.5,
                        375.74796748161316
                    ],
                    "order": 0,
                    "source": [
                        "obj-29",
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
                        "obj-29",
                        2
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
                        "obj-3",
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
                        "obj-30",
                        1
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
                        "obj-30",
                        3
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
                        "obj-30",
                        2
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
                        "obj-32",
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
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
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
                        "obj-48",
                        0
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
                        "obj-57",
                        0
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
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-36",
                        1
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
                        "obj-39",
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
                        "obj-4",
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
                        "obj-45",
                        0
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
                        "obj-43",
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
                        "obj-23",
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
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-48",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-76",
                        0
                    ],
                    "source": [
                        "obj-48",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-76",
                        0
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
                        "obj-5",
                        0
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
                        "obj-14",
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
                        "obj-14",
                        2
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
                        "obj-30",
                        0
                    ],
                    "source": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-75",
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
                        "obj-47",
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
                        "obj-76",
                        0
                    ],
                    "source": [
                        "obj-75",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-77",
                        0
                    ],
                    "source": [
                        "obj-75",
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
                        "obj-76",
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
                        "obj-76",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-76",
                        0
                    ],
                    "source": [
                        "obj-77",
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
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-1498"
    }
}