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
            1064.0,
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
                        187.0,
                        297.0,
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
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        170.0,
                        85.0,
                        137.0,
                        23.0
                    ],
                    "text": "buffer~ _spatphys sacre"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        69.0,
                        176.0,
                        130.0,
                        23.0
                    ],
                    "text": "grainflow.spat.volume"
                }
            },
            {
                "box": {
                    "id": "obj-52",
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
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        60.999999999999886,
                                        140.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "scale -1 1 -0.1 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        62.111111111111086,
                                        119.0,
                                        68.0,
                                        22.0
                                    ],
                                    "text": "snapshot~ 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        64.0,
                                        22.0
                                    ],
                                    "text": "cycle~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-51",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        60.99997966666649,
                                        222.0,
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
                                        "obj-43",
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
                                        "obj-51",
                                        0
                                    ],
                                    "source": [
                                        "obj-44",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2063"
                    },
                    "patching_rect": [
                        696.0,
                        75.0,
                        37.0,
                        23.0
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
                    "id": "obj-50",
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
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        60.999999999999886,
                                        140.0,
                                        95.0,
                                        22.0
                                    ],
                                    "text": "scale -1 1 -0.5 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        62.111111111111086,
                                        119.0,
                                        68.0,
                                        22.0
                                    ],
                                    "text": "snapshot~ 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        49.0,
                                        22.0
                                    ],
                                    "text": "cycle~ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-49",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        61.00000677777757,
                                        222.0,
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
                                        "obj-49",
                                        0
                                    ],
                                    "source": [
                                        "obj-46",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-46",
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
                                        "obj-47",
                                        0
                                    ],
                                    "source": [
                                        "obj-48",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2065"
                    },
                    "patching_rect": [
                        874.0,
                        75.0,
                        37.0,
                        23.0
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
                    "format": 6,
                    "id": "obj-36",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        987.9444444444447,
                        98.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-4",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        929.388888888889,
                        98.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-38",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        872.7222222222224,
                        98.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-39",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        754.1111111111113,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-40",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        697.4444444444446,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        640.7777777777779,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-33",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        978.9444444444447,
                        162.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-34",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        920.388888888889,
                        162.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-35",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        863.7222222222224,
                        162.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-26",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        753.0000000000001,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-28",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        696.3333333333334,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-31",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        639.6666666666667,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        537.0,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-21",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        480.3333333333333,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-25",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        423.66666666666663,
                        165.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-19",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        537.0,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-18",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        480.3333333333333,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        423.66666666666663,
                        99.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        816.0,
                        195.0,
                        197.0,
                        23.0
                    ],
                    "text": "pak accelerationRandom 0. 0. 0."
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
                        814.0,
                        130.0,
                        192.0,
                        23.0
                    ],
                    "text": "pak acceleration 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        584.0,
                        197.0,
                        203.0,
                        23.0
                    ],
                    "text": "pak velocityRandom 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        583.0,
                        130.0,
                        190.0,
                        23.0
                    ],
                    "text": "pak velocity 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        367.0,
                        197.0,
                        158.0,
                        23.0
                    ],
                    "text": "pak positionRandom 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        367.0,
                        130.0,
                        189.0,
                        23.0
                    ],
                    "text": "pak position 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        225.0,
                        241.0,
                        137.0,
                        23.0
                    ],
                    "text": "grainflow.spat.phys.add"
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
                        7.0,
                        50.0,
                        389.0,
                        35.0
                    ],
                    "text": "Abstraction to be used as a lamda expression to spat.phys that adds a value to a force every frame."
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
                    "text": "grainflow.spat.phys.add"
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
                        47.0,
                        382.0,
                        68.0,
                        23.0
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
                        53.0,
                        23.0
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
                        47.0,
                        354.0,
                        99.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ 2"
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
                        "originid": "pat-2087"
                    },
                    "patching_rect": [
                        69.0,
                        286.0,
                        98.0,
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
                    "id": "obj-11",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        46.5,
                        413.0,
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
                        70.0,
                        23.0
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
                        140.0,
                        23.0
                    ],
                    "text": "grainflow~ _spatphys 10"
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
                        47.0,
                        318.0,
                        120.0,
                        23.0
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
                        241.0,
                        133.0,
                        23.0
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
                        56.5,
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        593.5,
                        227.5,
                        234.5,
                        227.5
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        376.5,
                        227.5,
                        234.5,
                        227.5
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        825.5,
                        226.5,
                        234.5,
                        226.5
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        823.5,
                        225.0,
                        234.5,
                        225.0
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
                        "obj-30",
                        1
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
                        "obj-30",
                        2
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
                        "obj-30",
                        3
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
                        "obj-13",
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
                        "obj-13",
                        2
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
                        "obj-13",
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
                        "obj-9",
                        3
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
                        "obj-9",
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
                        "obj-53",
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        376.5,
                        229.0,
                        234.5,
                        229.0
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
                        "obj-9",
                        1
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
                        "obj-14",
                        3
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
                        "obj-14",
                        2
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
                        "obj-14",
                        1
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
                        "obj-15",
                        3
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
                        "obj-15",
                        1
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
                        "obj-12",
                        3
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
                        "obj-15",
                        2
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
                        "obj-12",
                        2
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
                        "obj-12",
                        1
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
                        "obj-38",
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
                        "obj-28",
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
                        "obj-1",
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
                        "obj-6",
                        0
                    ],
                    "midpoints": [
                        592.5,
                        225.0,
                        234.5,
                        225.0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-2035",
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
                "name": "grainflow.spat.phys.add.maxpat",
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
            },
            {
                "name": "jit.!-.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0
    }
}