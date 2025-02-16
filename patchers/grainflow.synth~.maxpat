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
            1476.0,
            335.0,
            664.0,
            784.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
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
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        304.25,
                                        188.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        292.5,
                                        211.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 6,
                                    "outlettype": [
                                        "signal",
                                        "bang",
                                        "int",
                                        "float",
                                        "",
                                        "list"
                                    ],
                                    "patching_rect": [
                                        270.0,
                                        147.0,
                                        71.5,
                                        21.0
                                    ],
                                    "text": "typeroute~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        270.0,
                                        114.0,
                                        52.0,
                                        21.0
                                    ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        151.0,
                                        94.0,
                                        21.0
                                    ],
                                    "text": "s #0_togSynth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
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
                                        54.0,
                                        100.0,
                                        206.0,
                                        21.0
                                    ],
                                    "text": "routepass voices getSends adsr update"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-47",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        54.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        292.5,
                                        292.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-50",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        327.5,
                                        292.0,
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
                                        "obj-56",
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
                                        "obj-7",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-31",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-8",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-31",
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
                                        "obj-39",
                                        4
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
                                        "obj-39",
                                        3
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
                                        "obj-39",
                                        2
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
                                        "obj-39",
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
                                        "obj-39",
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
                                        "obj-47",
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
                                        "obj-56",
                                        2
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
                                        "obj-56",
                                        4
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
                                        "obj-7",
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
                                        "obj-8",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-219",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        40.0,
                        99.0,
                        118.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ],
                        "globalpatchername": ""
                    },
                    "text": "p messageParser"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
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
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        60.5,
                                        236.0,
                                        94.0,
                                        21.0
                                    ],
                                    "text": "s #0_togSynth"
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
                                        71.0,
                                        203.0,
                                        84.0,
                                        21.0
                                    ],
                                    "text": "prepend voices"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        60.5,
                                        168.0,
                                        84.0,
                                        21.0
                                    ],
                                    "text": "prepend voices"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        134.0,
                                        69.0,
                                        21.0
                                    ],
                                    "text": "prepend buf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "unjoin"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        54.5,
                                        317.0,
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
                                        "obj-36",
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
                                        "obj-37",
                                        0
                                    ],
                                    "source": [
                                        "obj-35",
                                        1
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
                                        "obj-35",
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
                                        "obj-36",
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
                                        "obj-37",
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
                                        "obj-38",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-35",
                                        0
                                    ],
                                    "source": [
                                        "obj-44",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-221",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        380.0,
                        142.0,
                        88.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ],
                        "globalpatchername": ""
                    },
                    "text": "p initializer"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        382.0,
                        580.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40.0,
                        262.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        155.0,
                        300.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        391.0,
                        424.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        204.0,
                        102.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        547.0,
                        435.0,
                        118.0,
                        23.0
                    ],
                    "text": "s #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        547.0,
                        408.0,
                        67.0,
                        23.0
                    ],
                    "text": "update"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        380.0,
                        312.0,
                        54.0,
                        23.0
                    ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        547.0,
                        375.0,
                        55.0,
                        23.0
                    ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40.0,
                        432.0,
                        118.0,
                        23.0
                    ],
                    "text": "r #0_togSynth"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
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
                            876.0,
                            336.0,
                            1285.0,
                            764.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
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
                                            0.0,
                                            0.0,
                                            1000.0,
                                            780.0
                                        ],
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        336.0,
                                                        103.0,
                                                        22.0
                                                    ],
                                                    "text": "prepend grainInfo"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        304.25,
                                                        221.0,
                                                        29.5,
                                                        22.0
                                                    ],
                                                    "text": "t l 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        154.0,
                                                        159.0,
                                                        52.0,
                                                        22.0
                                                    ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "int",
                                                        "clear",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        230.0,
                                                        61.0,
                                                        22.0
                                                    ],
                                                    "text": "t 2 clear b"
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
                                                        154.0,
                                                        230.0,
                                                        96.0,
                                                        22.0
                                                    ],
                                                    "text": "prepend append"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        154.0,
                                                        190.0,
                                                        47.0,
                                                        22.0
                                                    ],
                                                    "text": "dict.iter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
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
                                                        166.0,
                                                        297.0,
                                                        61.0,
                                                        22.0
                                                    ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "legacy": 0,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        187.0,
                                                        100.0,
                                                        86.0,
                                                        22.0
                                                    ],
                                                    "text": "route grainInfo"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-61",
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
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-62",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        187.0,
                                                        40.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-63",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        166.0,
                                                        418.0,
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
                                                        "obj-60",
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
                                                        "obj-53",
                                                        0
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
                                                        "obj-53",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-57",
                                                        2
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
                                                        "obj-57",
                                                        1
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
                                                        "obj-57",
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
                                                        "obj-58",
                                                        0
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
                                                        1
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
                                                        "obj-59",
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
                                                        "obj-59",
                                                        1
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
                                                        "obj-60",
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
                                                        "obj-61",
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
                                                        "obj-62",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-58",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-7",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-367"
                                    },
                                    "patching_rect": [
                                        570.0,
                                        210.0,
                                        102.0,
                                        22.0
                                    ],
                                    "saved_object_attributes": {
                                        "globalpatchername": ""
                                    },
                                    "text": "p collectGrainInfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        412.0,
                                        198.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        393.0,
                                        250.0,
                                        111.0,
                                        22.0
                                    ],
                                    "text": "prepend bufChan"
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
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        59.0,
                                        68.0,
                                        22.0
                                    ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        316.0,
                                        297.0,
                                        134.0,
                                        22.0
                                    ],
                                    "text": "prepend grainWindow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        249.0,
                                        269.0,
                                        117.0,
                                        22.0
                                    ],
                                    "text": "prepend grainAmp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        183.0,
                                        243.0,
                                        134.0,
                                        22.0
                                    ],
                                    "text": "prepend grainPosition"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        116.0,
                                        217.0,
                                        138.0,
                                        22.0
                                    ],
                                    "text": "prepend grainProgress"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        186.0,
                                        132.0,
                                        22.0
                                    ],
                                    "text": "prepend grainState"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        316.0,
                                        150.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
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
                                        249.0,
                                        150.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        183.0,
                                        150.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        116.0,
                                        150.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        150.0,
                                        76.0,
                                        22.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 7,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        412.0,
                                        36.0
                                    ],
                                    "text": "route grainState grainProgress grainPosition grainAmp grainWindow bufChan"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        25.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-46",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        176.79998799999998,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-47",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        176.79998799999998,
                                        378.0,
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
                                        "obj-9",
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
                                        "obj-40",
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
                                        "obj-41",
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
                                        "obj-42",
                                        0
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
                                        "obj-43",
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
                                        "obj-44",
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
                                        "obj-47",
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
                                        "obj-47",
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
                                        "obj-47",
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
                                        "obj-47",
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
                                        "obj-47",
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
                                        "obj-47",
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
                                        "obj-1",
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
                                        "obj-26",
                                        0
                                    ],
                                    "order": 5,
                                    "source": [
                                        "obj-46",
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
                                    "order": 4,
                                    "source": [
                                        "obj-46",
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
                                    "order": 3,
                                    "source": [
                                        "obj-46",
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
                                    "order": 2,
                                    "source": [
                                        "obj-46",
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
                                    "order": 1,
                                    "source": [
                                        "obj-46",
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
                                    "order": 0,
                                    "source": [
                                        "obj-46",
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
                                        "obj-47",
                                        0
                                    ],
                                    "source": [
                                        "obj-64",
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
                                        "obj-9",
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
                                        "obj-9",
                                        1
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
                                        "obj-9",
                                        2
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
                                        "obj-9",
                                        3
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
                                        "obj-9",
                                        4
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
                                        "obj-9",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-64",
                                        1
                                    ],
                                    "source": [
                                        "obj-9",
                                        6
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-223",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        214.0,
                        576.0,
                        131.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ],
                        "globalpatchername": ""
                    },
                    "text": "p messageCollector"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        "clearGrains"
                    ],
                    "patching_rect": [
                        348.0,
                        505.0,
                        116.0,
                        23.0
                    ],
                    "text": "t b b clearGrains"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        476.0,
                        494.0,
                        138.0,
                        23.0
                    ],
                    "text": "qmetro 33 @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        385.0,
                        539.0,
                        90.0,
                        23.0
                    ],
                    "text": "grainData"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        214.0,
                        510.0,
                        112.0,
                        23.0
                    ],
                    "text": "route grainData"
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
                        40.0,
                        539.0,
                        83.0,
                        23.0
                    ],
                    "text": "mc.pack~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        348.0,
                        30.0,
                        56.0,
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
                        "bang"
                    ],
                    "patching_rect": [
                        348.0,
                        8.0,
                        78.0,
                        23.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        380.0,
                        111.0,
                        173.0,
                        23.0
                    ],
                    "text": "patcherargs buffername 8 4"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
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
                            1675.0,
                            652.0,
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
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        119.0,
                                        229.0,
                                        33.0,
                                        21.0
                                    ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        278.0,
                                        268.0,
                                        248.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        165.5,
                                        131.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        146.0,
                                        80.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        146.0,
                                        44.5,
                                        34.0,
                                        33.0
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        222.0,
                                        183.0,
                                        60.0,
                                        33.0
                                    ],
                                    "text": "prepend buf"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        222.0,
                                        32.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        111.0,
                                        257.0,
                                        80.0,
                                        21.0
                                    ],
                                    "text": "prepend delay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t f b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        136.25,
                                        189.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [
                                        "float",
                                        "list",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "",
                                        "int",
                                        ""
                                    ],
                                    "patching_rect": [
                                        60.5,
                                        123.0,
                                        103.0,
                                        21.0
                                    ],
                                    "text": "info~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        29.0,
                                        161.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-32",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        115.0,
                                        307.0,
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
                                        "obj-2",
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
                                        "obj-4",
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
                                        "obj-32",
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
                                        "obj-28",
                                        1
                                    ],
                                    "source": [
                                        "obj-26",
                                        6
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
                                        "obj-26",
                                        0
                                    ],
                                    "source": [
                                        "obj-29",
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
                                        "obj-29",
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
                                        "obj-30",
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
                                        "obj-4",
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
                                        "obj-5",
                                        1
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
                                        "obj-5",
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
                                        "obj-7",
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
                                        "obj-8",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-225"
                    },
                    "patching_rect": [
                        380.0,
                        211.0,
                        111.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p travms"
                }
            },
            {
                "box": {
                    "id": "obj-27",
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
                        380.0,
                        174.0,
                        188.0,
                        23.0
                    ],
                    "text": "route delay trav buf autoUpdate"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-25",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        214.0,
                        680.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-20",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40.0,
                        639.0,
                        30.0,
                        30.0
                    ]
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
                        380.0,
                        283.0,
                        146.0,
                        23.0
                    ],
                    "text": "prepend grainMessage"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        40.0,
                        166.0,
                        64.0,
                        23.0
                    ],
                    "text": "unjoin"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-10",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        36.0,
                        30.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        155.0,
                        230.0,
                        131.0,
                        23.0
                    ],
                    "text": "expr pow(2\\,$f1/12)"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        155.0,
                        199.0,
                        121.0,
                        23.0
                    ],
                    "text": "- 60"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        155.0,
                        267.0,
                        141.0,
                        23.0
                    ],
                    "text": "grainMessage rate $1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40.0,
                        230.0,
                        121.0,
                        23.0
                    ],
                    "text": "prepend midinote"
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
                        40.0,
                        192.0,
                        54.0,
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
                        204.0,
                        68.0,
                        159.0,
                        23.0
                    ],
                    "text": "grainMessage period 125"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        40.0,
                        469.0,
                        428.0,
                        23.0
                    ],
                    "text": "poly~ _grainflow.synth_voice 1 @target 0 @parallel 1 @args #1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-5",
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
                        "obj-5",
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
                        "obj-51",
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
                        "obj-29",
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
                        "obj-15",
                        1
                    ],
                    "source": [
                        "obj-12",
                        1
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
                        "obj-12",
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
                    "order": 0,
                    "source": [
                        "obj-12",
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
                        "obj-13",
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
                        "obj-14",
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
                        "obj-15",
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
                        "obj-16",
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
                        "obj-17",
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
                        "obj-18",
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
                        "obj-2",
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
                        "obj-21",
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
                        "obj-22",
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
                        0
                    ],
                    "source": [
                        "obj-24",
                        1
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
                        "obj-24",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
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
                        "obj-11",
                        1
                    ],
                    "midpoints": [
                        389.5,
                        353.5,
                        592.5,
                        353.5
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
                        "obj-40",
                        0
                    ],
                    "source": [
                        "obj-26",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        0
                    ],
                    "midpoints": [
                        516.25,
                        276.5,
                        556.5,
                        276.5
                    ],
                    "source": [
                        "obj-27",
                        3
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
                        558.5,
                        272.5,
                        389.5,
                        272.5
                    ],
                    "source": [
                        "obj-27",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        2
                    ],
                    "source": [
                        "obj-27",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        1
                    ],
                    "source": [
                        "obj-27",
                        1
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
                        "obj-27",
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
                        "obj-29",
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
                        "obj-3",
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
                        "obj-3",
                        1
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
                        "obj-33",
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
                        "obj-34",
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
                        "obj-46",
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
                        "obj-48",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-20",
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
                        "obj-12",
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
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-51",
                        1
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
                        "obj-6",
                        1
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
                        "obj-6",
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
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-217"
    }
}