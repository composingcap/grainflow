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
            1000.0,
            764.0,
            550.0,
            532.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        376.0,
                        105.0,
                        118.0,
                        23.0
                    ],
                    "text": "voices 0, voices #2"
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
                    "patching_rect": [
                        376.0,
                        76.0,
                        89.0,
                        23.0
                    ],
                    "text": "r #0_reset"
                }
            },
            {
                "box": {
                    "id": "obj-11",
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
                            86.0,
                            91.0,
                            1180.0,
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
                                        506.5,
                                        340.5,
                                        94.0,
                                        22.0
                                    ],
                                    "text": "s #0_tofreezer"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        377.0,
                                        330.5,
                                        94.0,
                                        22.0
                                    ],
                                    "text": "s #0_tofreezer"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        186.0,
                                        253.5,
                                        112.0,
                                        22.0
                                    ],
                                    "text": "r #0_recMessages"
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
                                    "patching_rect": [
                                        468.5,
                                        121.5,
                                        122.0,
                                        22.0
                                    ],
                                    "text": "r #0_grainMessages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
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
                                            1157.0,
                                            250.0,
                                            640.0,
                                            443.0
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
                                                        435.5,
                                                        293.0,
                                                        74.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_reset"
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
                                                        288.0,
                                                        181.0,
                                                        52.0,
                                                        20.0
                                                    ],
                                                    "text": "zl.slice 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        321.0,
                                                        203.0,
                                                        69.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_trav"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        403.5,
                                                        253.0,
                                                        113.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_recMessages"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        403.5,
                                                        189.0,
                                                        83.0,
                                                        20.0
                                                    ],
                                                    "text": "route rec reset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "clear"
                                                    ],
                                                    "patching_rect": [
                                                        156.10000000000002,
                                                        181.0,
                                                        44.0,
                                                        20.0
                                                    ],
                                                    "text": "t clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        263.0,
                                                        283.0,
                                                        33.0,
                                                        20.0
                                                    ],
                                                    "text": "open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        263.0,
                                                        260.0,
                                                        103.0,
                                                        20.0
                                                    ],
                                                    "text": "r #0_openBuffer"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        85.8,
                                                        198.0,
                                                        104.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_openBuffer"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        100.0,
                                                        98.0,
                                                        20.0
                                                    ],
                                                    "text": "r #0_messages"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        50.0,
                                                        172.0,
                                                        66.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_buf"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 8,
                                                    "numoutlets": 8,
                                                    "outlettype": [
                                                        "",
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
                                                        138.0,
                                                        306.0,
                                                        20.0
                                                    ],
                                                    "text": "routepass buf open freeze panic clear trav travGlobalOffset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        121.6,
                                                        226.0,
                                                        113.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_recMessages"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        467.5,
                                                        226.0,
                                                        123.0,
                                                        20.0
                                                    ],
                                                    "text": "s #0_grainMessages"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        316.0,
                                                        362.0,
                                                        52.0,
                                                        20.0
                                                    ],
                                                    "text": "zl.slice 1"
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
                                                        349.0,
                                                        397.0,
                                                        81.0,
                                                        20.0
                                                    ],
                                                    "text": "prepend name"
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
                                                        316.0,
                                                        327.0,
                                                        66.0,
                                                        20.0
                                                    ],
                                                    "text": "r #0_buf"
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
                                                        122.0,
                                                        306.0,
                                                        72.0,
                                                        20.0
                                                    ],
                                                    "text": "prepend size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        122.0,
                                                        283.0,
                                                        69.0,
                                                        20.0
                                                    ],
                                                    "text": "r #0_size"
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
                                                        120.0,
                                                        340.0,
                                                        115.0,
                                                        20.0
                                                    ],
                                                    "text": "buffer~ #0_flow_1 "
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-60",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "list"
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
                                                        "obj-3",
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
                                                        "obj-32",
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
                                                        "obj-8",
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
                                                        "obj-18",
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
                                                        "obj-2",
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
                                                        "obj-2",
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
                                                        "obj-24",
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
                                                        "obj-4",
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
                                                        "obj-41",
                                                        7
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
                                                        "obj-41",
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
                                                        "obj-41",
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
                                                        "obj-41",
                                                        3
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
                                                        "obj-41",
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
                                                        "obj-41",
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
                                                    "source": [
                                                        "obj-41",
                                                        6
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
                                                        "obj-41",
                                                        5
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
                                                        "obj-45",
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
                                                        "obj-48",
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
                                                        "obj-50",
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
                                                        "obj-6",
                                                        1
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
                                                        "obj-60",
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
                                                        "obj-7",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-1486",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        228.0,
                                        226.5,
                                        99.0,
                                        22.0
                                    ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ],
                                        "fontname": "Futura Medium",
                                        "fontsize": 10.0,
                                        "globalpatchername": ""
                                    },
                                    "text": "p messageParsing"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        207.0,
                                        180.5,
                                        113.0,
                                        22.0
                                    ],
                                    "text": "s #0_recMessages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        240.5,
                                        120.0,
                                        22.0
                                    ],
                                    "text": "receive~ #0_record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        171.5,
                                        108.0,
                                        22.0
                                    ],
                                    "text": "send~ #0_record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        128.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "mc.mixdown~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "routepass multichannelsignal"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
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
                                        186.0,
                                        128.0,
                                        71.5,
                                        22.0
                                    ],
                                    "text": "typeroute~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        316.0,
                                        96.0,
                                        22.0
                                    ],
                                    "text": "send~ #0_trav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        283.5,
                                        186.0,
                                        22.0
                                    ],
                                    "text": "grainflow.util.record~ #0_flow_1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
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
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        148.5,
                                                        100.0,
                                                        54.0,
                                                        21.0
                                                    ],
                                                    "text": "loadbang"
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
                                                        148.5,
                                                        138.0,
                                                        290.0,
                                                        21.0
                                                    ],
                                                    "text": "state forceGrainReset travRandom travGlobalOffset rate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        181.0,
                                                        43.0,
                                                        21.0
                                                    ],
                                                    "text": "zl.filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-15",
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
                                                    "id": "obj-16",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        50.0,
                                                        262.0,
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
                                                        "obj-8",
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
                                                        "obj-10",
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
                                                        "obj-8",
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
                                                        "obj-16",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-8",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-1496",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        506.5,
                                        247.5,
                                        125.0,
                                        22.0
                                    ],
                                    "saved_object_attributes": {
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ],
                                        "fontname": "Futura Medium",
                                        "fontsize": 10.0,
                                        "globalpatchername": ""
                                    },
                                    "text": "p internalMessageFilter"
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
                                        377.0,
                                        297.5,
                                        97.0,
                                        22.0
                                    ],
                                    "text": "prepend midinote"
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
                                        506.5,
                                        309.5,
                                        99.0,
                                        22.0
                                    ],
                                    "text": "prepend grainflow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        377.0,
                                        261.5,
                                        29.5,
                                        22.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        506.5,
                                        283.5,
                                        29.5,
                                        22.0
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
                                        464.5,
                                        214.5,
                                        71.5,
                                        22.0
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
                                        468.5,
                                        159.5,
                                        52.0,
                                        22.0
                                    ],
                                    "text": "zl.slice 1"
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
                                        "int"
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
                                        "obj-39",
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
                                        "obj-33",
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
                                        "obj-21",
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
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
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
                                        "obj-34",
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
                                        "obj-31",
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
                                        "obj-5",
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
                                        "obj-6",
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
                                        "obj-40",
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
                                        "obj-41",
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
                                        "obj-42",
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
                                        "obj-40",
                                        2
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
                                        "obj-40",
                                        5
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
                                        "obj-40",
                                        4
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
                                        "obj-18",
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
                                        "obj-8",
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
                                        "obj-17",
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
                                        "obj-34",
                                        0
                                    ],
                                    "source": [
                                        "obj-56",
                                        3
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
                                        "obj-56",
                                        2
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
                                        "obj-6",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1484",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        25.0,
                        61.5,
                        90.0,
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
                    "text": "p inputParse"
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
                        57.0,
                        173.0,
                        112.0,
                        23.0
                    ],
                    "text": "r #0_tofreezer"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        204.0,
                        134.0,
                        93.0,
                        23.0
                    ],
                    "text": "mstosamps~"
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
                        167.0,
                        173.0,
                        49.0,
                        23.0
                    ],
                    "text": "-~"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        204.0,
                        97.0,
                        87.0,
                        23.0
                    ],
                    "text": "r #0_trav"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-44",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        51.0,
                        269.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-36",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        25.0,
                        20.5,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-30",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        388.33333333333326,
                        164.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-29",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        277.66666666666663,
                        159.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-28",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        56.333333333333314,
                        122.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        168.0,
                        67.0,
                        127.0,
                        23.0
                    ],
                    "text": "receive~ #0_trav"
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
                        103.0,
                        20.5,
                        208.0,
                        23.0
                    ],
                    "text": "buffer~ #0_flow_1 @size #1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        56.0,
                        208.0,
                        370.0,
                        23.0
                    ],
                    "text": "mc.poly~ _grainflow.poly.freezer #2 @args #0_flow_1 4 @target 0"
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
                        "obj-1",
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
                        "obj-22",
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
                        "obj-1",
                        2
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
                        "obj-1",
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
                        "obj-11",
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
                        "obj-48",
                        1
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
                        "obj-46",
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
                        "obj-48",
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
                        "obj-7",
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
                        "obj-8",
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
        "originid": "pat-1482",
        "editing_bgcolor": [
            0.956862745098039,
            0.956862745098039,
            0.956862745098039,
            1.0
        ]
    }
}