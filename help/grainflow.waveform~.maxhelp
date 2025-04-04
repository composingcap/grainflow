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
            671.0,
            557.0
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
                    "id": "obj-3",
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
                            671.0,
                            531.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgColor": [
                                        0.27843137254902,
                                        0.27843137254902,
                                        0.27843137254902,
                                        1.0
                                    ],
                                    "buffername": "_gf.wf.help",
                                    "dotColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ],
                                    "dotColorSecondary": [
                                        0.184313725490196,
                                        0.396078431372549,
                                        0.16078431372549,
                                        1.0
                                    ],
                                    "id": "obj-7",
                                    "maxclass": "grainflow.waveform~",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        290.0,
                                        291.0,
                                        300.0,
                                        60.0
                                    ],
                                    "selectColor": [
                                        0.949019607843137,
                                        1.0,
                                        0.0,
                                        0.13
                                    ],
                                    "trackerColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "lastchannelcount": 2,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "",
                                        "float",
                                        "list"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        11.0,
                                        191.0,
                                        136.0,
                                        47.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                -30.360382638120647
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "mc.live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "mc.live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "list"
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
                                            696.0,
                                            436.0,
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
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
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
                                                            165.0,
                                                            245.0,
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
                                                                    "id": "obj-2",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        148.0,
                                                                        355.0,
                                                                        50.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-88",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        69.41666666666663,
                                                                        208.0,
                                                                        113.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.hrlp.wf.clickpos"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-84",
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
                                                                                    "id": "obj-72",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [
                                                                                        "bang",
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        200.0,
                                                                                        32.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "sel 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-71",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 3,
                                                                                    "outlettype": [
                                                                                        "",
                                                                                        "int",
                                                                                        "int"
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        177.0,
                                                                                        45.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "change"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-70",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [
                                                                                        "int"
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        57.75,
                                                                                        151.0,
                                                                                        29.5,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "> 0"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-69",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [
                                                                                        "",
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        57.75,
                                                                                        123.0,
                                                                                        67.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "route mode"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-68",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        223.0,
                                                                                        34.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "reset"
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
                                                                                        57.75,
                                                                                        100.0,
                                                                                        90.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "r _gf.wf.help.gui"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-83",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        304.0,
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
                                                                                        "obj-83",
                                                                                        0
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
                                                                                        "obj-70",
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
                                                                                        "obj-71",
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
                                                                                        "obj-72",
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
                                                                                        "obj-68",
                                                                                        0
                                                                                    ],
                                                                                    "source": [
                                                                                        "obj-72",
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
                                                                                        "obj-8",
                                                                                        0
                                                                                    ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "originid": "pat-952",
                                                                        "editing_bgcolor": [
                                                                            0.956862745098039,
                                                                            0.956862745098039,
                                                                            0.956862745098039,
                                                                            1.0
                                                                        ]
                                                                    },
                                                                    "patching_rect": [
                                                                        139.0,
                                                                        74.0,
                                                                        120.0,
                                                                        21.0
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
                                                                    "text": "p resetonmodechange"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-75",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "",
                                                                        "bang"
                                                                    ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [
                                                                        97.0,
                                                                        30.0,
                                                                        50.0,
                                                                        21.0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-73",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [
                                                                        "",
                                                                        "",
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        162.0,
                                                                        145.0,
                                                                        127.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "unjoin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-66",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "signal",
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        106.0,
                                                                        185.0,
                                                                        129.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "grainflow.util.phasor~ 1"
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
                                                                        3.0,
                                                                        208.0,
                                                                        29.5,
                                                                        21.0
                                                                    ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "int"
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        176.0,
                                                                        29.5,
                                                                        21.0
                                                                    ],
                                                                    "text": "> 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "",
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        141.0,
                                                                        67.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "route mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        108.0,
                                                                        90.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.wf.help.gui"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        40.91666666666663,
                                                                        292.0,
                                                                        76.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "selector~ 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        162.0,
                                                                        108.0,
                                                                        104.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.wf.help.select"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        69.41666666666663,
                                                                        240.0,
                                                                        31.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "sig~"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-91",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [
                                                                        40.916687000000024,
                                                                        386.949219,
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
                                                                        "obj-73",
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
                                                                        "obj-91",
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
                                                                        "obj-43",
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
                                                                        "obj-45",
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
                                                                        "obj-2",
                                                                        1
                                                                    ],
                                                                    "order": 0,
                                                                    "source": [
                                                                        "obj-45",
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
                                                                    "order": 1,
                                                                    "source": [
                                                                        "obj-45",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-39",
                                                                        2
                                                                    ],
                                                                    "source": [
                                                                        "obj-66",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
                                                                        2
                                                                    ],
                                                                    "source": [
                                                                        "obj-73",
                                                                        1
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
                                                                        1
                                                                    ],
                                                                    "source": [
                                                                        "obj-73",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
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
                                                                        "obj-66",
                                                                        0
                                                                    ],
                                                                    "source": [
                                                                        "obj-84",
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
                                                                        "obj-88",
                                                                        0
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "originid": "pat-950",
                                                        "editing_bgcolor": [
                                                            0.956862745098039,
                                                            0.956862745098039,
                                                            0.956862745098039,
                                                            1.0
                                                        ]
                                                    },
                                                    "patching_rect": [
                                                        225.0,
                                                        156.0,
                                                        69.0,
                                                        22.0
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
                                                    "text": "p traversal"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-90",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        51.0,
                                                        152.0,
                                                        100.0,
                                                        22.0
                                                    ],
                                                    "text": "r _gf.hrlp.wf.togf"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "multichannelsignal",
                                                        "list"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        292.0,
                                                        158.0,
                                                        22.0
                                                    ],
                                                    "text": "grainflow.util.stereoPan~ 25"
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
                                                        50.0,
                                                        113.0,
                                                        74.0,
                                                        22.0
                                                    ],
                                                    "text": "phasor~ 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
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
                                                        51.0,
                                                        213.0,
                                                        145.0,
                                                        22.0
                                                    ],
                                                    "text": "grainflow~ _gf.wf.help 25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-6",
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
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        50.0,
                                                        374.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-8",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        90.0,
                                                        374.0,
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
                                                        "obj-27",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-20",
                                                        2
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
                                                        "obj-20",
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
                                                        "obj-20",
                                                        1
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
                                                        "obj-26",
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
                                                        "obj-27",
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
                                                        "obj-6",
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
                                                        "obj-90",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-20",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-92",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-948",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        11.0,
                                        143.0,
                                        74.0,
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
                                    "text": "p granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        54.0,
                                        453.0,
                                        35.0
                                    ],
                                    "text": "There are many attributes you can use to customize the look of grainflow.waveform~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-137",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        6.0,
                                        430.0,
                                        42.0
                                    ],
                                    "text": "grainflow.waveform~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-97",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        37.0,
                                        110.0,
                                        151.0,
                                        25.0
                                    ],
                                    "text": "Turn on the granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
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
                                            838.0,
                                            407.0,
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
                                                    "id": "obj-2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        107.0,
                                                        264.0,
                                                        50.0,
                                                        21.0
                                                    ],
                                                    "text": "0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        205.0,
                                                        233.0,
                                                        94.0,
                                                        21.0
                                                    ],
                                                    "text": "s _gf.hrlp.wf.togf"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        162.0,
                                                        271.0,
                                                        114.0,
                                                        21.0
                                                    ],
                                                    "text": "s _gf.hrlp.wf.clickpos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        142.0,
                                                        67.0,
                                                        21.0
                                                    ],
                                                    "text": "route mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        176.0,
                                                        35.0,
                                                        21.0
                                                    ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        132.0,
                                                        50.0,
                                                        21.0
                                                    ],
                                                    "text": "gate 1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        107.0,
                                                        90.0,
                                                        21.0
                                                    ],
                                                    "text": "r _gf.wf.help.gui"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        205.0,
                                                        199.0,
                                                        47.0,
                                                        21.0
                                                    ],
                                                    "text": "amp $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        157.0,
                                                        97.0,
                                                        21.0
                                                    ],
                                                    "text": "unjoin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        100.0,
                                                        97.0,
                                                        21.0
                                                    ],
                                                    "text": "route clicking idle"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-94",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
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
                                                        "obj-2",
                                                        1
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "obj-18",
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
                                                        "obj-18",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-87",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-18",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-89",
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
                                                        "obj-34",
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
                                                        "obj-32",
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
                                                        "obj-33",
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
                                                        "obj-32",
                                                        1
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
                                                        "obj-9",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-94",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-960",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        571.0,
                                        401.0,
                                        75.0,
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
                                    "text": "p parseclick"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        290.0,
                                        427.0,
                                        112.0,
                                        23.0
                                    ],
                                    "text": "s _gf.wf.help.select"
                                }
                            },
                            {
                                "box": {
                                    "elementcolor": [
                                        0.847058823529412,
                                        0.847058823529412,
                                        0.847058823529412,
                                        1.0
                                    ],
                                    "id": "obj-24",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        11.0,
                                        269.0,
                                        45.0,
                                        45.0
                                    ]
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
                                        290.0,
                                        401.0,
                                        117.0,
                                        23.0
                                    ],
                                    "text": "route selection"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        11.0,
                                        110.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": "",
                                    "uncheckedcolor": [
                                        0.694117647058824,
                                        0.694117647058824,
                                        0.694117647058824,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "dotColor",
                                    "id": "obj-1",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        290.0,
                                        111.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "dotColorSecondary",
                                    "id": "obj-2",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        290.0,
                                        137.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "selectColor",
                                    "id": "obj-3",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        470.0,
                                        216.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "showTriangles",
                                    "id": "obj-8",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        290.0,
                                        216.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "triangleColor",
                                    "id": "obj-10",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        290.0,
                                        249.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "mode",
                                    "id": "obj-11",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        95.0,
                                        143.0,
                                        182.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "waveformColor",
                                    "id": "obj-12",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        470.0,
                                        137.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "bgColor",
                                    "id": "obj-13",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        470.0,
                                        105.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "dotScale",
                                    "id": "obj-14",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        290.0,
                                        163.0,
                                        160.0,
                                        23.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
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
                                        "obj-7",
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        104.5,
                                        177.0,
                                        211.0,
                                        177.0,
                                        211.0,
                                        276.0,
                                        299.5,
                                        276.0
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        479.5,
                                        274.5,
                                        299.5,
                                        274.5
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
                                    "midpoints": [
                                        479.5,
                                        270.5,
                                        299.5,
                                        270.5
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
                                        "obj-7",
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
                                        "obj-9",
                                        0
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        479.5,
                                        271.0,
                                        299.5,
                                        271.0
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
                                        "obj-35",
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
                                        "obj-24",
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
                                        "obj-5",
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
                                        "obj-95",
                                        0
                                    ],
                                    "source": [
                                        "obj-7",
                                        1
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
                                        "obj-6",
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        75.5,
                                        177.0,
                                        209.0,
                                        177.0,
                                        209.0,
                                        276.0,
                                        299.5,
                                        276.0
                                    ],
                                    "source": [
                                        "obj-9",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-946"
                    },
                    "patching_rect": [
                        13.0,
                        38.0,
                        90.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Customization"
                }
            },
            {
                "box": {
                    "id": "obj-2",
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
                            671.0,
                            531.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgColor": [
                                        0.27843137254902,
                                        0.27843137254902,
                                        0.27843137254902,
                                        1.0
                                    ],
                                    "buffername": "_gf.wf.help2",
                                    "dotColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ],
                                    "dotColorSecondary": [
                                        0.184313725490196,
                                        0.396078431372549,
                                        0.16078431372549,
                                        1.0
                                    ],
                                    "id": "obj-1",
                                    "maxclass": "grainflow.waveform~",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        95.0,
                                        271.0,
                                        272.0,
                                        81.0
                                    ],
                                    "selectColor": [
                                        0.949019607843137,
                                        1.0,
                                        0.0,
                                        0.13
                                    ],
                                    "trackerColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.0,
                                    "bubbleside": 0,
                                    "id": "obj-51",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        411.0,
                                        208.0,
                                        198.0,
                                        97.0
                                    ],
                                    "text": "You can change the quality of the displayed buffer using maxBufferDrawSamples.  This sets the maximum number of samples used to represent the buffer."
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-46",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        426.0,
                                        86.0,
                                        157.0,
                                        97.0
                                    ],
                                    "text": "A bang can be used to tell grainflow to redraw the buffer image. This should only be used in live granulation and is rather expensive."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "list"
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
                                            1472.0,
                                            642.0,
                                            1085.0,
                                            597.0
                                        ],
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "boxes": [
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
                                                        51.0,
                                                        332.0,
                                                        74.0,
                                                        22.0
                                                    ],
                                                    "text": "mc.*~ 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "multichannelsignal",
                                                        "list"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        294.0,
                                                        164.0,
                                                        22.0
                                                    ],
                                                    "text": "grainflow.util.stereoPan~ 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        739.0,
                                                        269.0,
                                                        119.0,
                                                        22.0
                                                    ],
                                                    "text": "scale~ -1 1 0.2 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        674.0,
                                                        256.0,
                                                        43.0,
                                                        22.0
                                                    ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        752.0,
                                                        238.0,
                                                        81.0,
                                                        22.0
                                                    ],
                                                    "text": "cycle~ 0.32"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        670.0,
                                                        194.0,
                                                        124.0,
                                                        22.0
                                                    ],
                                                    "text": "scale~ -1 1 200 800"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        653.0,
                                                        167.0,
                                                        75.0,
                                                        22.0
                                                    ],
                                                    "text": "cycle~ 0.1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        679.0,
                                                        318.0,
                                                        195.0,
                                                        22.0
                                                    ],
                                                    "text": "grainflow.util.record~ _gf.wf.help2"
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
                                                        673.0,
                                                        225.0,
                                                        55.0,
                                                        22.0
                                                    ],
                                                    "text": "cycle~"
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
                                                        116.0,
                                                        147.0,
                                                        80.0,
                                                        22.0
                                                    ],
                                                    "text": "phasor~ 10"
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
                                                        50.0,
                                                        194.0,
                                                        261.0,
                                                        22.0
                                                    ],
                                                    "text": "grainflow~ _gf.wf.help2 50 @delayRandom 900"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-42",
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
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-43",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        51.0,
                                                        413.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-44",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        126.0,
                                                        413.0,
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
                                                        "obj-40",
                                                        1
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
                                                        "obj-40",
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
                                                        "obj-44",
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
                                                        "obj-1",
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
                                                        "obj-32",
                                                        0
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
                                                        "obj-1",
                                                        1
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
                                                        "obj-44",
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
                                                        "obj-29",
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
                                                        "obj-25",
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
                                                        "obj-36",
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
                                                        "obj-26",
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
                                                        "obj-32",
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
                                                        "obj-41",
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
                                                        "obj-43",
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
                                                    "order": 1,
                                                    "source": [
                                                        "obj-42",
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
                                                    "order": 0,
                                                    "source": [
                                                        "obj-42",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-964"
                                    },
                                    "patching_rect": [
                                        20.0,
                                        200.0,
                                        60.0,
                                        23.0
                                    ],
                                    "saved_object_attributes": {
                                        "globalpatchername": ""
                                    },
                                    "text": "p grains"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        20.0,
                                        332.5,
                                        48.0,
                                        48.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        352.0,
                                        107.5,
                                        27.0,
                                        27.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [
                                                "off",
                                                "on"
                                            ],
                                            "parameter_initial": [
                                                1.0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "svg": "",
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        352.0,
                                        137.0,
                                        68.0,
                                        23.0
                                    ],
                                    "text": "qmetro 33"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.0,
                                    "bubbleside": 0,
                                    "id": "obj-16",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        123.0,
                                        141.0,
                                        165.0,
                                        69.0
                                    ],
                                    "text": "Adjusting the frame rate will reduce the frequency of drawing calls"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        128.5,
                                        27.0,
                                        27.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        12.0,
                                        47.0,
                                        434.0,
                                        35.0
                                    ],
                                    "text": "grainflow.waveform~ can strain your CPU as the jsui api is not incredibly efficent.  There are some tools to help you though! "
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-137",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        12.0,
                                        -1.0,
                                        552.0,
                                        42.0
                                    ],
                                    "text": "grainflow.waveform~ Performance"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        95.0,
                                        442.5,
                                        114.0,
                                        23.0
                                    ],
                                    "text": "s _gf.wf.help.select"
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
                                        95.0,
                                        412.0,
                                        92.0,
                                        23.0
                                    ],
                                    "text": "route selection"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        327.0,
                                        400.0,
                                        182.0,
                                        23.0
                                    ],
                                    "text": "buffer~ _gf.wf.help2 @size 1000"
                                }
                            },
                            {
                                "box": {
                                    "attr": "fps",
                                    "id": "obj-2",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        95.0,
                                        112.0,
                                        147.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "maxBufferDrawSamples",
                                    "id": "obj-4",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        352.0,
                                        184.0,
                                        157.0,
                                        23.0
                                    ]
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
                                    "source": [
                                        "obj-1",
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
                                    "source": [
                                        "obj-24",
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
                                        "obj-34",
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
                                        "obj-45",
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
                                        "obj-45",
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
                                        "obj-5",
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
                                        "obj-6",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-962"
                    },
                    "patching_rect": [
                        13.0,
                        68.0,
                        81.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Performance"
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
                            100.0,
                            126.0,
                            671.0,
                            531.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-15",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        221.0,
                                        156.0,
                                        297.0,
                                        78.0
                                    ],
                                    "text": "The interaction mode for the waveform.\nScrub -> click and drag to change selected position\nSelection -> click and drag to select a range\nLoop -> click and drag to move a selection on the x axis and the size changes on the y axis."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        216.0,
                                        122.0,
                                        199.0,
                                        21.0
                                    ],
                                    "text": "The buffer the waveform will draw"
                                }
                            },
                            {
                                "box": {
                                    "bgColor": [
                                        0.27843137254902,
                                        0.27843137254902,
                                        0.27843137254902,
                                        1.0
                                    ],
                                    "buffername": "_gf.wf.help",
                                    "dotColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ],
                                    "dotColorSecondary": [
                                        0.184313725490196,
                                        0.396078431372549,
                                        0.16078431372549,
                                        1.0
                                    ],
                                    "id": "obj-7",
                                    "maxclass": "grainflow.waveform~",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        185.0,
                                        313.0,
                                        310.0,
                                        78.0
                                    ],
                                    "selectColor": [
                                        0.949019607843137,
                                        1.0,
                                        0.0,
                                        0.13
                                    ],
                                    "selection": [
                                        0.161290322580645,
                                        0.31390322585395
                                    ],
                                    "trackerColor": [
                                        0.470588235294118,
                                        1.0,
                                        0.403921568627451,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "lastchannelcount": 2,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "",
                                        "float",
                                        "list"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        13.0,
                                        325.0,
                                        136.0,
                                        47.0
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                -30.360382638120647
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "mc.live.gain~",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "mc.live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "list"
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
                                            696.0,
                                            436.0,
                                            640.0,
                                            480.0
                                        ],
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "visible": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
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
                                                            165.0,
                                                            245.0,
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
                                                                    "id": "obj-2",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        148.0,
                                                                        355.0,
                                                                        50.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-88",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        69.41666666666663,
                                                                        208.0,
                                                                        113.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.hrlp.wf.clickpos"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-84",
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
                                                                                    "id": "obj-72",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [
                                                                                        "bang",
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        200.0,
                                                                                        32.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "sel 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-71",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 3,
                                                                                    "outlettype": [
                                                                                        "",
                                                                                        "int",
                                                                                        "int"
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        177.0,
                                                                                        45.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "change"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-70",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [
                                                                                        "int"
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        57.75,
                                                                                        151.0,
                                                                                        29.5,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "> 0"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-69",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [
                                                                                        "",
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        57.75,
                                                                                        123.0,
                                                                                        67.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "route mode"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-68",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [
                                                                                        ""
                                                                                    ],
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        223.0,
                                                                                        34.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "reset"
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
                                                                                        57.75,
                                                                                        100.0,
                                                                                        90.0,
                                                                                        21.0
                                                                                    ],
                                                                                    "text": "r _gf.wf.help.gui"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-83",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [
                                                                                        50.0,
                                                                                        304.0,
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
                                                                                        "obj-83",
                                                                                        0
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
                                                                                        "obj-70",
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
                                                                                        "obj-71",
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
                                                                                        "obj-72",
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
                                                                                        "obj-68",
                                                                                        0
                                                                                    ],
                                                                                    "source": [
                                                                                        "obj-72",
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
                                                                                        "obj-8",
                                                                                        0
                                                                                    ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "originid": "pat-980",
                                                                        "editing_bgcolor": [
                                                                            0.956862745098039,
                                                                            0.956862745098039,
                                                                            0.956862745098039,
                                                                            1.0
                                                                        ]
                                                                    },
                                                                    "patching_rect": [
                                                                        139.0,
                                                                        74.0,
                                                                        120.0,
                                                                        21.0
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
                                                                    "text": "p resetonmodechange"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "format": 6,
                                                                    "id": "obj-75",
                                                                    "maxclass": "flonum",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "",
                                                                        "bang"
                                                                    ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [
                                                                        97.0,
                                                                        30.0,
                                                                        50.0,
                                                                        21.0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-73",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [
                                                                        "",
                                                                        "",
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        162.0,
                                                                        145.0,
                                                                        127.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "unjoin"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-66",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "signal",
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        106.0,
                                                                        185.0,
                                                                        129.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "grainflow.util.phasor~ 1"
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
                                                                        3.0,
                                                                        208.0,
                                                                        29.5,
                                                                        21.0
                                                                    ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "int"
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        176.0,
                                                                        29.5,
                                                                        21.0
                                                                    ],
                                                                    "text": "> 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [
                                                                        "",
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        141.0,
                                                                        67.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "route mode"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-41",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        3.0,
                                                                        108.0,
                                                                        90.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.wf.help.gui"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-39",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        40.91666666666663,
                                                                        292.0,
                                                                        76.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "selector~ 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        ""
                                                                    ],
                                                                    "patching_rect": [
                                                                        162.0,
                                                                        108.0,
                                                                        104.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "r _gf.wf.help.select"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [
                                                                        "signal"
                                                                    ],
                                                                    "patching_rect": [
                                                                        69.41666666666663,
                                                                        240.0,
                                                                        31.0,
                                                                        21.0
                                                                    ],
                                                                    "text": "sig~"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-91",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [
                                                                        40.916687000000024,
                                                                        386.949219,
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
                                                                        "obj-73",
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
                                                                        "obj-91",
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
                                                                        "obj-43",
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
                                                                        "obj-45",
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
                                                                        "obj-2",
                                                                        1
                                                                    ],
                                                                    "order": 0,
                                                                    "source": [
                                                                        "obj-45",
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
                                                                    "order": 1,
                                                                    "source": [
                                                                        "obj-45",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-39",
                                                                        2
                                                                    ],
                                                                    "source": [
                                                                        "obj-66",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
                                                                        2
                                                                    ],
                                                                    "source": [
                                                                        "obj-73",
                                                                        1
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
                                                                        1
                                                                    ],
                                                                    "source": [
                                                                        "obj-73",
                                                                        0
                                                                    ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [
                                                                        "obj-66",
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
                                                                        "obj-66",
                                                                        0
                                                                    ],
                                                                    "source": [
                                                                        "obj-84",
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
                                                                        "obj-88",
                                                                        0
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "originid": "pat-978",
                                                        "editing_bgcolor": [
                                                            0.956862745098039,
                                                            0.956862745098039,
                                                            0.956862745098039,
                                                            1.0
                                                        ]
                                                    },
                                                    "patching_rect": [
                                                        225.0,
                                                        156.0,
                                                        72.0,
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
                                                    "text": "p traversal"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-90",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        51.0,
                                                        152.0,
                                                        103.0,
                                                        23.0
                                                    ],
                                                    "text": "r _gf.hrlp.wf.togf"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "multichannelsignal",
                                                        "list"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        292.0,
                                                        161.0,
                                                        23.0
                                                    ],
                                                    "text": "grainflow.util.stereoPan~ 25"
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
                                                        50.0,
                                                        113.0,
                                                        77.0,
                                                        23.0
                                                    ],
                                                    "text": "phasor~ 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
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
                                                        51.0,
                                                        213.0,
                                                        148.0,
                                                        23.0
                                                    ],
                                                    "text": "grainflow~ _gf.wf.help 25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-6",
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
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        50.0,
                                                        374.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-8",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        90.0,
                                                        374.0,
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
                                                        "obj-27",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-20",
                                                        2
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
                                                        "obj-20",
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
                                                        "obj-20",
                                                        1
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
                                                        "obj-26",
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
                                                        "obj-27",
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
                                                        "obj-6",
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
                                                        "obj-90",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-20",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-92",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-976",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        11.0,
                                        290.0,
                                        76.0,
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
                                    "text": "p granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        54.0,
                                        486.0,
                                        50.0
                                    ],
                                    "text": "grainflow.waveform is a jsui gui that visualizes grains to aid in designing sounds. grainflow.waveform~ has various visual customizations as well as performance optimization features."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-137",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        6.0,
                                        430.0,
                                        42.0
                                    ],
                                    "text": "grainflow.waveform~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-97",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        37.0,
                                        257.0,
                                        150.0,
                                        25.0
                                    ],
                                    "text": "Turn on the granulator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
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
                                            838.0,
                                            407.0,
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
                                                    "id": "obj-2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        107.0,
                                                        264.0,
                                                        50.0,
                                                        21.0
                                                    ],
                                                    "text": "0.16129"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        205.0,
                                                        233.0,
                                                        94.0,
                                                        21.0
                                                    ],
                                                    "text": "s _gf.hrlp.wf.togf"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        162.0,
                                                        271.0,
                                                        114.0,
                                                        21.0
                                                    ],
                                                    "text": "s _gf.hrlp.wf.clickpos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        142.0,
                                                        67.0,
                                                        21.0
                                                    ],
                                                    "text": "route mode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        176.0,
                                                        35.0,
                                                        21.0
                                                    ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        132.0,
                                                        50.0,
                                                        21.0
                                                    ],
                                                    "text": "gate 1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        107.0,
                                                        90.0,
                                                        21.0
                                                    ],
                                                    "text": "r _gf.wf.help.gui"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        205.0,
                                                        199.0,
                                                        47.0,
                                                        21.0
                                                    ],
                                                    "text": "amp $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        157.0,
                                                        97.0,
                                                        21.0
                                                    ],
                                                    "text": "unjoin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
                                                        100.0,
                                                        97.0,
                                                        21.0
                                                    ],
                                                    "text": "route clicking idle"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-94",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        166.0,
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
                                                        "obj-2",
                                                        1
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "obj-18",
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
                                                        "obj-18",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-87",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-18",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-89",
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
                                                        "obj-34",
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
                                                        "obj-32",
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
                                                        "obj-33",
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
                                                        "obj-32",
                                                        1
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
                                                        "obj-9",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-94",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-986",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        476.0,
                                        412.0,
                                        76.0,
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
                                    "text": "p parseclick"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        185.0,
                                        449.0,
                                        113.0,
                                        23.0
                                    ],
                                    "text": "s _gf.wf.help.select"
                                }
                            },
                            {
                                "box": {
                                    "elementcolor": [
                                        0.847058823529412,
                                        0.847058823529412,
                                        0.847058823529412,
                                        1.0
                                    ],
                                    "id": "obj-24",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        13.0,
                                        390.0,
                                        45.0,
                                        45.0
                                    ]
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
                                        185.0,
                                        423.0,
                                        106.0,
                                        23.0
                                    ],
                                    "text": "route selection"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        11.0,
                                        257.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": "",
                                    "uncheckedcolor": [
                                        0.694117647058824,
                                        0.694117647058824,
                                        0.694117647058824,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        387.0,
                                        459.0,
                                        161.0,
                                        23.0
                                    ],
                                    "text": "buffer~ _gf.wf.help anton.aif"
                                }
                            },
                            {
                                "box": {
                                    "attr": "mode",
                                    "id": "obj-1",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        8.0,
                                        165.0,
                                        210.0,
                                        23.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "buffername",
                                    "id": "obj-12",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        8.0,
                                        121.0,
                                        206.0,
                                        23.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        17.5,
                                        227.5,
                                        194.5,
                                        227.5
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
                                        "obj-7",
                                        0
                                    ],
                                    "midpoints": [
                                        17.5,
                                        228.5,
                                        194.5,
                                        228.5
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
                                    "source": [
                                        "obj-25",
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
                                        "obj-5",
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
                                        "obj-6",
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
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-95",
                                        0
                                    ],
                                    "source": [
                                        "obj-7",
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
                                        "obj-9",
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
                                        "obj-9",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-974"
                    },
                    "patching_rect": [
                        13.0,
                        11.0,
                        57.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p General"
                }
            }
        ],
        "lines": [],
        "originid": "pat-944",
        "parameters": {
            "obj-1::obj-6": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "obj-2::obj-34": [
                "toggle",
                "toggle",
                0
            ],
            "obj-3::obj-6": [
                "mc.live.gain~[1]",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.sahPhasor.gendsp",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.phasor~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereopan~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow.waveform~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow~.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0,
        "editing_bgcolor": [
            0.956862745098039,
            0.956862745098039,
            0.956862745098039,
            1.0
        ]
    }
}