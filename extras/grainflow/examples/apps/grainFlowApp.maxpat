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
            100.0,
            85.0,
            950.0,
            630.0
        ],
        "openinpresentation": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "toolbars_unpinned_last_save": 13,
        "boxes": [
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        788.0,
                        264.0,
                        41.0,
                        20.0
                    ],
                    "text": "* 0.01"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        751.0,
                        212.0,
                        41.0,
                        20.0
                    ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        751.0,
                        184.0,
                        139.0,
                        20.0
                    ],
                    "text": "r cp.grainflow.app.volume"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        799.0,
                        207.0,
                        49.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        472.5,
                        350.49999999999994,
                        91.0,
                        18.0
                    ],
                    "text": "Volume "
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-116",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        789.0,
                        232.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        426.0,
                        352.5,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "volume",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "volume",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "volume"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        789.0,
                        300.0,
                        47.0,
                        20.0
                    ],
                    "text": "amp $1"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        590.0,
                        144.0,
                        32.0,
                        20.0
                    ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        590.0,
                        121.0,
                        151.0,
                        20.0
                    ],
                    "text": "r cp.grainflow.app.clickMode"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        504.0,
                        133.0,
                        66.0,
                        20.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        539.0,
                        207.0,
                        66.0,
                        20.0
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        687.0,
                        547.5,
                        117.0,
                        44.0
                    ],
                    "text": "s cp.grainflow.app.loadedSound"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "There are 100 possible active grains. If you exceed this number, grains will be cut off early",
                    "id": "obj-159",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1124.0,
                        699.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        763.25,
                        371.93666666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1004.0,
                        603.0,
                        98.0,
                        20.0
                    ],
                    "text": "textcolor $1 0 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        991.0,
                        581.0,
                        43.0,
                        20.0
                    ],
                    "text": "> 250."
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        991.0,
                        630.0,
                        83.25,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        674.75,
                        371.93666666666667,
                        83.25,
                        18.0
                    ],
                    "text": "Active Grains",
                    "textcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "cantchange": 1,
                    "fontface": 1,
                    "fontname": "Ableton Sans Medium",
                    "id": "obj-118",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        991.0,
                        494.0,
                        48.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        635.75,
                        371.93666666666667,
                        37.0,
                        20.0
                    ],
                    "textcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "triangle": 0
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        899.0,
                        738.0,
                        153.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.messages"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The probability of the direction of grains. 1 is 100% forward -1 is 100% backward",
                    "id": "obj-99",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1109.0,
                        684.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        352.25,
                        360.4366666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        952.0,
                        687.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        257.0,
                        357.4366666666667,
                        93.0,
                        18.0
                    ],
                    "text": "Grain Direction"
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "id": "obj-109",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        899.0,
                        687.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        208.0,
                        357.4366666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "grainDirection",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": -1.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "grainDirection",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "grainDirection"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        899.0,
                        711.0,
                        68.0,
                        20.0
                    ],
                    "text": "direction $1"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "cantchange": 1,
                    "fontface": 0,
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 9.0,
                    "format": 6,
                    "id": "obj-85",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        192.0,
                        161.0,
                        51.0,
                        19.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        415.0,
                        280.0,
                        33.75,
                        19.0
                    ],
                    "triangle": 0
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        254.0,
                        156.0,
                        135.0,
                        20.0
                    ],
                    "text": "expr log10($f1)/log10(2)"
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
                        254.0,
                        108.0,
                        90.0,
                        20.0
                    ],
                    "text": "expr pow(2\\,$f1)"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
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
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        81.0,
                                        361.0,
                                        29.0,
                                        21.0
                                    ],
                                    "text": "t 64"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        65.5,
                                        313.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-138",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        284.0,
                                        137.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "GrainDelayRandom"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        98.5,
                                        100.0,
                                        88.0,
                                        21.0
                                    ],
                                    "text": "route pitchbend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        90.5,
                                        189.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        65.5,
                                        268.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        225.5,
                                        67.0,
                                        21.0
                                    ],
                                    "text": "mousestate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        142.5,
                                        168.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        152.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        123.0,
                                        88.0,
                                        21.0
                                    ],
                                    "text": "route pitchbend"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-140",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        174.75,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-143",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        98.5,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-148",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        66.75,
                                        444.75,
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
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-111",
                                        0
                                    ],
                                    "source": [
                                        "obj-109",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        0
                                    ],
                                    "source": [
                                        "obj-111",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        0
                                    ],
                                    "source": [
                                        "obj-112",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        1
                                    ],
                                    "source": [
                                        "obj-116",
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
                                        "obj-125",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-116",
                                        0
                                    ],
                                    "source": [
                                        "obj-126",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-112",
                                        0
                                    ],
                                    "source": [
                                        "obj-131",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-109",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-140",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-138",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-140",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-131",
                                        0
                                    ],
                                    "source": [
                                        "obj-143",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "source": [
                                        "obj-2",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-165",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        2232.0,
                        319.0,
                        63.0,
                        20.0
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
                    "text": "p"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        2232.0,
                        289.0,
                        50.5,
                        20.0
                    ],
                    "saved_object_attributes": {
                        "mode": 1
                    },
                    "text": "hover"
                }
            },
            {
                "box": {
                    "id": "obj-149",
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
                                    "id": "obj-138",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        284.0,
                                        137.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "GrainDelayRandom"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        66.75,
                                        363.75,
                                        72.0,
                                        21.0
                                    ],
                                    "text": "set $1, bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        98.5,
                                        100.0,
                                        84.0,
                                        21.0
                                    ],
                                    "text": "route soundfile"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        90.5,
                                        189.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        263.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-122",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        73.0,
                                        328.0,
                                        97.0,
                                        21.0
                                    ],
                                    "text": "opendialog sound"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
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
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "stop",
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        185.0,
                                                        244.0,
                                                        57.0,
                                                        21.0
                                                    ],
                                                    "text": "t stop b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        217.0,
                                                        32.0,
                                                        21.0
                                                    ],
                                                    "text": "sel 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        139.0,
                                                        165.0,
                                                        54.0,
                                                        21.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [
                                                        "int",
                                                        "",
                                                        "",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        184.0,
                                                        61.0,
                                                        21.0
                                                    ],
                                                    "text": "counter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        100.0,
                                                        145.0,
                                                        22.0,
                                                        21.0
                                                    ],
                                                    "text": "t 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        100.0,
                                                        112.0,
                                                        46.0,
                                                        21.0
                                                    ],
                                                    "text": "del 250"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        100.0,
                                                        32.0,
                                                        21.0
                                                    ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-59",
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
                                                    "id": "obj-61",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        185.0,
                                                        333.50543200000004,
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
                                                        "obj-32",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-31",
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
                                                    "order": 1,
                                                    "source": [
                                                        "obj-31",
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
                                                        "obj-32",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-34",
                                                        2
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
                                                        "obj-40",
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
                                                        "obj-33",
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
                                                        "obj-32",
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
                                                        "obj-33",
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
                                                        "obj-61",
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
                                                        "obj-31",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-59",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-169",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        73.0,
                                        301.5,
                                        74.0,
                                        21.0
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
                                    "text": "p doubleclick"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        225.5,
                                        67.0,
                                        21.0
                                    ],
                                    "text": "mousestate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        142.5,
                                        168.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        152.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        77.5,
                                        123.0,
                                        84.0,
                                        21.0
                                    ],
                                    "text": "route soundfile"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-140",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        174.75,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-143",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        98.5,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-148",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        66.75,
                                        444.75,
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
                                        "obj-111",
                                        0
                                    ],
                                    "source": [
                                        "obj-109",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        0
                                    ],
                                    "source": [
                                        "obj-111",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        0
                                    ],
                                    "source": [
                                        "obj-112",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        1
                                    ],
                                    "source": [
                                        "obj-116",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-135",
                                        0
                                    ],
                                    "source": [
                                        "obj-122",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-65",
                                        0
                                    ],
                                    "source": [
                                        "obj-125",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-116",
                                        0
                                    ],
                                    "source": [
                                        "obj-126",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-112",
                                        0
                                    ],
                                    "source": [
                                        "obj-131",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "source": [
                                        "obj-135",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-109",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-140",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-138",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-140",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-131",
                                        0
                                    ],
                                    "source": [
                                        "obj-143",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-122",
                                        0
                                    ],
                                    "source": [
                                        "obj-65",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-167",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        720.0,
                        437.0,
                        63.0,
                        20.0
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
                    "text": "p"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        2240.0,
                        194.0,
                        42.0,
                        20.0
                    ],
                    "text": "sel 1 0"
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
                        2240.0,
                        156.0,
                        155.0,
                        20.0
                    ],
                    "text": "r cp.grainflow.app.transMode"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2112.0,
                        230.0,
                        162.0,
                        20.0
                    ],
                    "text": "bgfillcolor 0.427 0.843 1. 0.26"
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
                        2287.0,
                        236.0,
                        97.0,
                        20.0
                    ],
                    "text": "bgfillcolor 0 0 0 0"
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
                        1359.0,
                        494.0,
                        49.0,
                        20.0
                    ],
                    "text": "route 0."
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "patching_rect": [
                        1354.0,
                        441.0,
                        29.5,
                        20.0
                    ],
                    "text": "t l b"
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
                        1374.0,
                        524.0,
                        65.0,
                        20.0
                    ],
                    "text": "pack 0. 60."
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
                        1355.0,
                        467.0,
                        25.0,
                        20.0
                    ],
                    "text": "iter"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1355.0,
                        419.0,
                        112.0,
                        20.0
                    ],
                    "restore": [
                        42
                    ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr keyboardNotes",
                    "varname": "keyboardNotes"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        414.0,
                        271.0,
                        32.0,
                        20.0
                    ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        414.0,
                        242.0,
                        58.0,
                        20.0
                    ],
                    "restore": [
                        0
                    ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr stop",
                    "varname": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        477.0,
                        343.0,
                        57.0,
                        20.0
                    ],
                    "restore": [
                        0
                    ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr play",
                    "varname": "play"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        345.0,
                        343.0,
                        97.0,
                        20.0
                    ],
                    "restore": [
                        0
                    ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr playReverse",
                    "varname": "playReverse"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The center point for panning",
                    "id": "obj-93",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1265.0,
                        196.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        561.0,
                        304.00000000000006,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "id": "obj-289",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        649.0,
                        13.0,
                        341.0,
                        22.0
                    ],
                    "text": "window flags grow, window size 100 100 2500 800, window exec"
                }
            },
            {
                "box": {
                    "id": "obj-288",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        579.0,
                        20.0,
                        54.0,
                        20.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 11.595187,
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        579.0,
                        43.0,
                        354.0,
                        22.0
                    ],
                    "text": "window size 100 100 1050 700, window flags nogrow, window exec"
                }
            },
            {
                "box": {
                    "id": "obj-287",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        579.0,
                        68.0,
                        65.0,
                        20.0
                    ],
                    "save": [
                        "#N",
                        "thispatcher",
                        ";",
                        "#Q",
                        "end",
                        ";"
                    ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "obj-285",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
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
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        257.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
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
                                            495.0,
                                            101.0
                                        ],
                                        "openinpresentation": 1,
                                        "gridsize": [
                                            15.0,
                                            15.0
                                        ],
                                        "toolbars_unpinned_last_save": 15,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.595187,
                                                    "id": "obj-14",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        207.0,
                                                        75.0,
                                                        141.0,
                                                        22.0
                                                    ],
                                                    "text": "window title, window exec"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.595187,
                                                    "id": "obj-13",
                                                    "linecount": 3,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        324.0,
                                                        252.0,
                                                        106.0,
                                                        48.0
                                                    ],
                                                    "text": "window notitle, window flags float, window exec"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        280.0,
                                                        229.0,
                                                        42.0,
                                                        21.0
                                                    ],
                                                    "text": "wclose"
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
                                                        228.0,
                                                        217.0,
                                                        33.0,
                                                        21.0
                                                    ],
                                                    "text": "front"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-8",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        224.5,
                                                        173.0,
                                                        30.0,
                                                        30.0
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
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        207.0,
                                                        269.0,
                                                        65.0,
                                                        21.0
                                                    ],
                                                    "save": [
                                                        "#N",
                                                        "thispatcher",
                                                        ";",
                                                        "#Q",
                                                        "end",
                                                        ";"
                                                    ],
                                                    "text": "thispatcher"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-6",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        99.0,
                                                        217.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        20.0,
                                                        226.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 16.0,
                                                    "id": "obj-4",
                                                    "maxclass": "live.text",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [
                                                        83.0,
                                                        86.0,
                                                        62.0,
                                                        24.0
                                                    ],
                                                    "presentation": 1,
                                                    "presentation_rect": [
                                                        75.0,
                                                        51.0,
                                                        62.0,
                                                        24.0
                                                    ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [
                                                                "val1",
                                                                "val2"
                                                            ],
                                                            "parameter_invisible": 2,
                                                            "parameter_longname": "live.text[3]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_osc_name": "<default>",
                                                            "parameter_shortname": "live.text[2]",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "No",
                                                    "varname": "live.text[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 16.0,
                                                    "id": "obj-3",
                                                    "maxclass": "live.text",
                                                    "mode": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [
                                                        16.0,
                                                        86.0,
                                                        62.0,
                                                        24.0
                                                    ],
                                                    "presentation": 1,
                                                    "presentation_rect": [
                                                        8.0,
                                                        51.0,
                                                        62.0,
                                                        24.0
                                                    ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_enum": [
                                                                "val1",
                                                                "val2"
                                                            ],
                                                            "parameter_invisible": 2,
                                                            "parameter_longname": "live.text[2]",
                                                            "parameter_mmax": 1,
                                                            "parameter_modmode": 0,
                                                            "parameter_osc_name": "<default>",
                                                            "parameter_shortname": "live.text[2]",
                                                            "parameter_type": 2
                                                        }
                                                    },
                                                    "text": "Yes",
                                                    "varname": "live.text"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontsize": 20.0,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        16.0,
                                                        21.0,
                                                        480.0,
                                                        31.0
                                                    ],
                                                    "presentation": 1,
                                                    "presentation_rect": [
                                                        8.0,
                                                        9.0,
                                                        480.0,
                                                        31.0
                                                    ],
                                                    "text": "Audio is not on.  Would you like to turn it on?"
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
                                                        "obj-12",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-3",
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
                                                    "order": 1,
                                                    "source": [
                                                        "obj-3",
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
                                                        "obj-6",
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
                                                        "obj-10",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "obj-8",
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
                                                        "obj-8",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-173",
                                        "bgcolor": [
                                            1.0,
                                            1.0,
                                            1.0,
                                            1.0
                                        ],
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        66.0,
                                        207.0,
                                        60.0,
                                        21.0
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
                                        "globalpatchername": "",
                                        "locked_bgcolor": [
                                            1.0,
                                            1.0,
                                            1.0,
                                            1.0
                                        ]
                                    },
                                    "text": "p audioOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        135.16927083333303,
                                        134.0,
                                        145.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.onCheck"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-120",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        71.0,
                                        128.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-115",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        66.0,
                                        174.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
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
                                        54.0,
                                        100.0,
                                        59.0,
                                        21.0
                                    ],
                                    "text": "dspstate~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-284",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        338.0,
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
                                        "obj-120",
                                        0
                                    ],
                                    "source": [
                                        "obj-105",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-130",
                                        0
                                    ],
                                    "source": [
                                        "obj-115",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-115",
                                        0
                                    ],
                                    "source": [
                                        "obj-120",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-115",
                                        1
                                    ],
                                    "source": [
                                        "obj-126",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-132",
                                        0
                                    ],
                                    "source": [
                                        "obj-130",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-284",
                                        0
                                    ],
                                    "source": [
                                        "obj-132",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-171",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        25.0,
                        148.0,
                        69.0,
                        20.0
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
                    "text": "p checkIfOn"
                }
            },
            {
                "box": {
                    "id": "obj-282",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
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
                            765.0,
                            780.0,
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
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        415.0,
                                        367.0,
                                        93.0,
                                        21.0
                                    ],
                                    "text": "panCenter $1"
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
                                        239.0,
                                        359.0,
                                        93.0,
                                        21.0
                                    ],
                                    "text": "panSpread $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        415.0,
                                        341.0,
                                        155.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.panCenter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        239.0,
                                        336.0,
                                        158.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.panSpread"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "list"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        396.0,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "grainflow.util.stereoPan~"
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
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        75.5,
                                        111.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "change"
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
                                        66.0,
                                        84.0,
                                        64.0,
                                        21.0
                                    ],
                                    "text": "route state"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        234.0,
                                        540.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
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
                                        272.0,
                                        506.0,
                                        59.0,
                                        21.0
                                    ],
                                    "text": "dspstate~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        155.33333333333337,
                                        487.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-280",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        117.83333333333337,
                                        240.0,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.grainInfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-272",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        172.0,
                                        137.0,
                                        189.0,
                                        21.0
                                    ],
                                    "text": "receive~ cp.grainflow.app.grainTrav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-170",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        146.5,
                                        587.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "1 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-167",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        155.33333333333337,
                                        521.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-129",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        181.33333333333337,
                                        587.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "0 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        140.0,
                                        632.0,
                                        44.0,
                                        21.0
                                    ],
                                    "text": "line~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        108.0,
                                        684.0,
                                        51.0,
                                        21.0
                                    ],
                                    "text": "mc.*~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        155.33333333333337,
                                        458.0,
                                        138.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.keyson"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-248",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "multichannelsignal",
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        458.0,
                                        77.0,
                                        21.0
                                    ],
                                    "text": "mc.cross~ 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        108.0,
                                        714.5,
                                        68.0,
                                        21.0
                                    ],
                                    "text": "mc.*~ 0.33"
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
                                        392.0,
                                        240.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        393.0,
                                        216.0,
                                        76.0,
                                        21.0
                                    ],
                                    "text": "route ngrains"
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
                                        393.0,
                                        190.0,
                                        152.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.messages"
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
                                        91.33333333333337,
                                        160.0,
                                        202.0,
                                        21.0
                                    ],
                                    "text": "receive~ cp.grainflow.app.grainphasor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        64.5,
                                        48.0,
                                        152.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        268.0,
                                        263.0,
                                        143.0,
                                        21.0
                                    ],
                                    "text": "zl.slice 10 @zlmaxsize 600"
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
                                        94.0,
                                        195.0,
                                        234.0,
                                        21.0
                                    ],
                                    "text": "grainFlow~ cp.grainflow.app 250 @ngrains 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-281",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        108.0,
                                        768.5,
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
                                        "obj-280",
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
                                        "obj-7",
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
                                        "obj-10",
                                        0
                                    ],
                                    "source": [
                                        "obj-108",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-86",
                                        1
                                    ],
                                    "source": [
                                        "obj-114",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-114",
                                        0
                                    ],
                                    "source": [
                                        "obj-129",
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
                                        "obj-139",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-129",
                                        0
                                    ],
                                    "source": [
                                        "obj-167",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-170",
                                        0
                                    ],
                                    "source": [
                                        "obj-167",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-114",
                                        0
                                    ],
                                    "source": [
                                        "obj-170",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-167",
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
                                        "obj-5",
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
                                        "obj-86",
                                        0
                                    ],
                                    "source": [
                                        "obj-248",
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
                                        "obj-26",
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
                                        "obj-272",
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
                                        "obj-30",
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
                                        "obj-4",
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
                                        "obj-45",
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
                                        "obj-46",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-22",
                                        1
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
                                        "obj-1",
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
                                        "obj-281",
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
                                        "obj-1",
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
                                        "obj-248",
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
                                        "obj-59",
                                        0
                                    ],
                                    "source": [
                                        "obj-86",
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
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-175",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        34.0,
                        232.0,
                        108.0,
                        20.0
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
                    "text": "p grainsAndPanning"
                }
            },
            {
                "box": {
                    "id": "obj-278",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                            535.0,
                            581.0,
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
                                    "id": "obj-277",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        128.5,
                                        341.75,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-153",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        125.0,
                                        234.75,
                                        178.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.stateClickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-127",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        128.5,
                                        281.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-149",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        391.0,
                                        198.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        391.0,
                                        168.0,
                                        138.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.keyson"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        205.7264956831932,
                                        146.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.onCheck"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        63.5,
                                        181.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-163",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        63.5,
                                        91.0,
                                        128.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.state"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-119",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        193.0,
                                        175.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        193.0,
                                        281.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        179.0,
                                        145.0,
                                        151.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.clickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        121.5,
                                        154.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "i 0"
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
                                        128.5,
                                        306.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "state $1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-127",
                                        0
                                    ],
                                    "source": [
                                        "obj-109",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-119",
                                        0
                                    ],
                                    "source": [
                                        "obj-116",
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
                                        "obj-118",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-118",
                                        0
                                    ],
                                    "source": [
                                        "obj-119",
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
                                        "obj-127",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-149",
                                        0
                                    ],
                                    "source": [
                                        "obj-131",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-277",
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
                                        "obj-118",
                                        0
                                    ],
                                    "source": [
                                        "obj-149",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-127",
                                        0
                                    ],
                                    "source": [
                                        "obj-149",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-127",
                                        0
                                    ],
                                    "source": [
                                        "obj-153",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-109",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-163",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-98",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-163",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-125",
                                        0
                                    ],
                                    "source": [
                                        "obj-98",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-177",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        24.0,
                        90.0,
                        98.0,
                        20.0
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
                    "text": "p interactionState"
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        414.0,
                        184.0,
                        155.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.freezeTrav"
                }
            },
            {
                "box": {
                    "id": "obj-275",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        365.0,
                        210.0,
                        143.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.travrate"
                }
            },
            {
                "box": {
                    "id": "obj-267",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                                    "id": "obj-262",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.9166666666667,
                                        132.5,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "v cp.grainflow.app.savePath"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-261",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        237.0,
                                        189.0,
                                        21.0
                                    ],
                                    "text": "mc.receive~ grainflow.app.output 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-137",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        462.49999999999994,
                                        493.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        462.49999999999994,
                                        533.0,
                                        33.0,
                                        21.0
                                    ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-122",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        293.5,
                                        565.0,
                                        68.0,
                                        21.0
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-121",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        260.5,
                                        498.0,
                                        52.0,
                                        21.0
                                    ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        293.5,
                                        530.0,
                                        124.0,
                                        21.0
                                    ],
                                    "text": "tosymbol @separator :"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        260.5,
                                        467.0,
                                        126.0,
                                        21.0
                                    ],
                                    "text": "translate ms hh:mm:ss"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        334.1666666666667,
                                        428.0,
                                        67.0,
                                        21.0
                                    ],
                                    "text": "qmetro 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        255.5,
                                        424.0,
                                        62.0,
                                        21.0
                                    ],
                                    "text": "snapshot~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        731.6666666666667,
                                        159.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        731.6666666666667,
                                        187.0,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "v cp.grainflow.app.savePath"
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
                                        630.9166666666667,
                                        203.0,
                                        68.0,
                                        21.0
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        255.5,
                                        340.0,
                                        78.0,
                                        21.0
                                    ],
                                    "text": "prepend open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        248.66666666666669,
                                        174.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        258.6666666666667,
                                        203.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
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
                                        255.5,
                                        311.0,
                                        268.0,
                                        21.0
                                    ],
                                    "text": "v cp.grainflow.app.savePath Desktop:/grainflow.aiff"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        630.9166666666667,
                                        100.0,
                                        88.0,
                                        21.0
                                    ],
                                    "text": "savedialog AIFF"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        255.5,
                                        384.0,
                                        86.0,
                                        21.0
                                    ],
                                    "text": "mc.sfrecord~ 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-263",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        248.66666666666669,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-264",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.9166666666667,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-265",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        372.0000106666667,
                                        646.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-266",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        630.9166666666667,
                                        646.0,
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
                                        "obj-122",
                                        0
                                    ],
                                    "source": [
                                        "obj-111",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-111",
                                        0
                                    ],
                                    "source": [
                                        "obj-121",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-265",
                                        0
                                    ],
                                    "source": [
                                        "obj-122",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-265",
                                        0
                                    ],
                                    "source": [
                                        "obj-136",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-136",
                                        0
                                    ],
                                    "source": [
                                        "obj-137",
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
                                        "obj-261",
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
                                        "obj-263",
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
                                        "obj-264",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-262",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-34",
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
                                    "order": 0,
                                    "source": [
                                        "obj-34",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-52",
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
                                        "obj-136",
                                        0
                                    ],
                                    "source": [
                                        "obj-50",
                                        1
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
                                        "obj-50",
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
                                        "obj-51",
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
                                    "order": 1,
                                    "source": [
                                        "obj-51",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-79",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-51",
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
                                        "obj-52",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-266",
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
                                        "obj-55",
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
                                        "obj-57",
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
                                        "obj-84",
                                        0
                                    ],
                                    "source": [
                                        "obj-65",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-65",
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
                                        "obj-65",
                                        0
                                    ],
                                    "source": [
                                        "obj-79",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-121",
                                        0
                                    ],
                                    "source": [
                                        "obj-84",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-179",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        48.0,
                        468.0,
                        66.0,
                        20.0
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
                    "text": "p recording"
                }
            },
            {
                "box": {
                    "id": "obj-260",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        56.0,
                        343.0,
                        167.0,
                        20.0
                    ],
                    "text": "mc.send~ grainflow.app.output"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
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
                                    "id": "obj-227",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        150.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-226",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        120.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-213",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        239.5,
                                        131.0,
                                        231.25,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-212",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        345.625,
                                        166.0,
                                        92.0,
                                        21.0
                                    ],
                                    "text": "textcolor 0 0 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-210",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        239.5,
                                        166.0,
                                        102.0,
                                        21.0
                                    ],
                                    "text": "textcolor 0 0 0 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-208",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        119.375,
                                        189.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-206",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        112.0,
                                        150.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-205",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        155.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.transMode"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-256",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        44.0,
                                        284.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-257",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        256.9375,
                                        284.0,
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
                                        "obj-226",
                                        0
                                    ],
                                    "source": [
                                        "obj-205",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-208",
                                        0
                                    ],
                                    "source": [
                                        "obj-206",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-257",
                                        0
                                    ],
                                    "source": [
                                        "obj-208",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-257",
                                        0
                                    ],
                                    "source": [
                                        "obj-210",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-257",
                                        0
                                    ],
                                    "source": [
                                        "obj-212",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-210",
                                        0
                                    ],
                                    "source": [
                                        "obj-213",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-212",
                                        0
                                    ],
                                    "source": [
                                        "obj-213",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-206",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-226",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-213",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-226",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-227",
                                        0
                                    ],
                                    "source": [
                                        "obj-226",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-256",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-227",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-257",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-227",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-181",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        1459.0,
                        515.0,
                        221.75,
                        20.0
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
                    "text": "p transpositionInteraction"
                }
            },
            {
                "box": {
                    "id": "obj-245",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
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
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "float",
                                        "bang",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        51.75,
                                        100.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "t f b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        255.75,
                                        228.0,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        228.0,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        255.75,
                                        138.0,
                                        170.0,
                                        21.0
                                    ],
                                    "text": "expr pow(2.\\,($f1+ $f2*0.5)/12)"
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
                                        255.75,
                                        187.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "rate $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        147.0,
                                        148.0,
                                        21.0
                                    ],
                                    "text": "expr 1-pow(2.\\,abs($f1)/12)"
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
                                        50.0,
                                        194.0,
                                        86.0,
                                        21.0
                                    ],
                                    "text": "rateRandom $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-243",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        51.75,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-244",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        255.75,
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
                                        "obj-27",
                                        0
                                    ],
                                    "source": [
                                        "obj-243",
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
                                        "obj-244",
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
                                        "obj-27",
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
                                    "source": [
                                        "obj-27",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-85",
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
                                        "obj-9",
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
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-85",
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
                        "originid": "pat-183",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        1459.0,
                        618.0,
                        221.75,
                        20.0
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
                    "text": "p grainTranspositionMessages"
                }
            },
            {
                "box": {
                    "id": "obj-242",
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
                            1928.0,
                            364.0,
                            638.0,
                            480.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        481.0,
                                        571.0,
                                        58.0,
                                        45.0
                                    ],
                                    "text": "windowOffset 0.038462"
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
                                        436.0,
                                        463.0,
                                        113.0,
                                        21.0
                                    ],
                                    "text": "windowOffsetMode 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        407.0,
                                        503.0,
                                        127.0,
                                        21.0
                                    ],
                                    "text": "windowOffsetRandom 0"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        74.0,
                                        247.0,
                                        50.0,
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
                                        "float"
                                    ],
                                    "patching_rect": [
                                        53.75,
                                        180.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!/ 1."
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
                                        312.0,
                                        164.0,
                                        57.0,
                                        21.0
                                    ],
                                    "text": "0.006152"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        421.0,
                                        280.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        177.25,
                                        302.0,
                                        164.0,
                                        21.0
                                    ],
                                    "text": "if $f1 > 250. then 250 else $f1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        148.75,
                                        95.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        131.0,
                                        622.0,
                                        190.0,
                                        21.0
                                    ],
                                    "text": "send~ cp.grainflow.app.grainphasor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        225.0,
                                        596.0,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-180",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        81.0,
                                        480.0,
                                        52.0,
                                        21.0
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-181",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        302.0,
                                        61.0,
                                        21.0
                                    ],
                                    "text": "phasor~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-184",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        128.75,
                                        391.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "/ 1."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-185",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        177.25,
                                        273.0,
                                        50.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-187",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        209.75,
                                        273.0,
                                        150.0,
                                        19.0
                                    ],
                                    "text": "Overlap"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-189",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        81.0,
                                        450.0,
                                        50.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-190",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        119.75,
                                        330.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!- 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-191",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        236.25,
                                        340.0,
                                        375.0,
                                        21.0
                                    ],
                                    "text": "expr (($f1 >= 0) * int(($f1 != int($f1)) + $f1)) + (($f1 < 0) * int ($f1))"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-192",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        157.0,
                                        135.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-193",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        153.25,
                                        239.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!/ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-194",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        305.0,
                                        428.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!/ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-195",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        300.0,
                                        523.0,
                                        92.0,
                                        21.0
                                    ],
                                    "text": "windowOffset $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-196",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        184.0,
                                        450.0,
                                        50.0,
                                        21.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        184.0,
                                        486.0,
                                        62.0,
                                        21.0
                                    ],
                                    "text": "ngrains $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        79.5,
                                        529.0,
                                        53.0,
                                        21.0
                                    ],
                                    "text": "space $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-198",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        106.75,
                                        213.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!/ 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-240",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        72.375,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-241",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        143.75,
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
                                        "obj-23",
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
                                        "obj-181",
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
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-180",
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
                                        "obj-181",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-189",
                                        0
                                    ],
                                    "source": [
                                        "obj-184",
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
                                    "order": 0,
                                    "source": [
                                        "obj-185",
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
                                    "order": 1,
                                    "source": [
                                        "obj-185",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-180",
                                        0
                                    ],
                                    "source": [
                                        "obj-189",
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
                                        "obj-19",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-184",
                                        0
                                    ],
                                    "source": [
                                        "obj-190",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-184",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-191",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-190",
                                        1
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-191",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-196",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-191",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-193",
                                        1
                                    ],
                                    "source": [
                                        "obj-192",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-193",
                                        0
                                    ],
                                    "source": [
                                        "obj-192",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-185",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-193",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-191",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-193",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-195",
                                        0
                                    ],
                                    "source": [
                                        "obj-194",
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
                                    "order": 1,
                                    "source": [
                                        "obj-195",
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
                                    "order": 0,
                                    "source": [
                                        "obj-195",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-194",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-196",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-197",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-196",
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
                                        "obj-197",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-193",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-198",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-198",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-190",
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
                                        "obj-23",
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
                                        "obj-198",
                                        0
                                    ],
                                    "source": [
                                        "obj-240",
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
                                        "obj-241",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-192",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-38",
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
                                    "order": 1,
                                    "source": [
                                        "obj-38",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-181",
                                        0
                                    ],
                                    "source": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-185",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        991.0,
                        459.0,
                        113.0,
                        20.0
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
                    "text": "p grainPhasor"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-179",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [
                        0.0,
                        0.0
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
                        "openinpresentation": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        297.0,
                                        42.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        76.0,
                                        15.0,
                                        85.0,
                                        21.0
                                    ],
                                    "restore": [
                                        1
                                    ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr envSelect",
                                    "varname": "envSelect"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        354.0,
                                        332.0,
                                        104.0,
                                        21.0
                                    ],
                                    "restore": [
                                        47999.0,
                                        0.0,
                                        1.0,
                                        0.0,
                                        0.0,
                                        0,
                                        0.0,
                                        31134.486486486487,
                                        1.0,
                                        0,
                                        -0.3,
                                        47350.36486486487,
                                        0.0,
                                        2,
                                        -0.65,
                                        "curve"
                                    ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr userEnvelope",
                                    "varname": "userEnvelope"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        355.0,
                                        87.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        243.0,
                                        75.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        231.0,
                                        123.0,
                                        123.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 1, hidden 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        377.0,
                                        93.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        65.0,
                                        182.0,
                                        178.0,
                                        21.0
                                    ],
                                    "text": "buffername cp.grainflow.app.user"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        408.0,
                                        58.0,
                                        220.0,
                                        21.0
                                    ],
                                    "text": "buffer~ cp.grainflow.app.user @size 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        437.0,
                                        95.0,
                                        34.0,
                                        21.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        476.75,
                                        207.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        576.5,
                                        198.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        516.5,
                                        164.0,
                                        79.0,
                                        21.0
                                    ],
                                    "text": "mstosamps~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "linecount": 2,
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
                                        476.75,
                                        95.0,
                                        116.0,
                                        33.0
                                    ],
                                    "text": "info~ cp.grainflow.app.user"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        439.75,
                                        164.0,
                                        56.0,
                                        21.0
                                    ],
                                    "text": "uzi 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        378.0,
                                        388.0,
                                        152.0,
                                        21.0
                                    ],
                                    "text": "poke~ cp.grainflow.app.user"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        569.5,
                                        234.0,
                                        82.0,
                                        21.0
                                    ],
                                    "text": "setdomain $1"
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
                                        255.0,
                                        182.0,
                                        123.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 0, hidden 0"
                                }
                            },
                            {
                                "box": {
                                    "addpoints_with_curve": [
                                        0.0,
                                        0.0,
                                        0,
                                        0.0,
                                        31134.486486486487,
                                        1.0,
                                        0,
                                        -0.3,
                                        47350.36486486487,
                                        0.0,
                                        2,
                                        -0.65
                                    ],
                                    "bgcolor": [
                                        1.0,
                                        1.0,
                                        1.0,
                                        1.0
                                    ],
                                    "classic_curve": 1,
                                    "domain": 47999.0,
                                    "gridcolor": [
                                        1.0,
                                        1.0,
                                        1.0,
                                        1.0
                                    ],
                                    "hidden": 1,
                                    "id": "obj-1",
                                    "ignoreclick": 1,
                                    "legend": 0,
                                    "maxclass": "function",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "float",
                                        "",
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        26.0,
                                        315.0,
                                        261.0,
                                        65.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0.0,
                                        0.0,
                                        160.0,
                                        50.0
                                    ],
                                    "varname": "function"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-176",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
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
                                            741.0,
                                            291.0,
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
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        211.0,
                                                        260.0,
                                                        138.0,
                                                        21.0
                                                    ],
                                                    "text": "env cp.grainflow.app.user"
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
                                                        421.0,
                                                        267.0,
                                                        30.0,
                                                        30.0
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
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        421.0,
                                                        218.0,
                                                        22.0,
                                                        21.0
                                                    ],
                                                    "text": "t b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "int",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        84.0,
                                                        110.0,
                                                        49.0,
                                                        21.0
                                                    ],
                                                    "text": "split 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        406.0,
                                                        129.0,
                                                        29.5,
                                                        21.0
                                                    ],
                                                    "text": "- 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        406.0,
                                                        101.0,
                                                        66.0,
                                                        21.0
                                                    ],
                                                    "text": "route count"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        406.0,
                                                        47.99999971874999,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-166",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        56.0,
                                                        267.0,
                                                        153.0,
                                                        21.0
                                                    ],
                                                    "text": "s cp.grainflow.app.messages"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-165",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        56.0,
                                                        223.84326171875,
                                                        75.0,
                                                        21.0
                                                    ],
                                                    "text": "prepend env"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-164",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        90.0,
                                                        184.84326171875,
                                                        33.5,
                                                        21.0
                                                    ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-162",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        155.0,
                                                        184.84326171875,
                                                        170.0,
                                                        33.0
                                                    ],
                                                    "text": "sprintf cp.grainflow.app.envelopes.%d"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-161",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        155.0,
                                                        229.84326171875,
                                                        87.0,
                                                        21.0
                                                    ],
                                                    "text": "buffername $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-174",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        84.0,
                                                        39.99999971874999,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-175",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        155.0,
                                                        333.84326171875,
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
                                                    "source": [
                                                        "obj-1",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-175",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-161",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-161",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-162",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-165",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "obj-162",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-162",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-164",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-166",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-165",
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
                                                        "obj-174",
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
                                                        "obj-4",
                                                        2
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
                                                        "obj-164",
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
                                                        "obj-7",
                                                        0
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
                                                        "obj-8",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "obj-7",
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
                                                    "order": 1,
                                                    "source": [
                                                        "obj-7",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-166",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-9",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-190",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        48.0,
                                        114.0,
                                        67.0,
                                        21.0
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
                                    "text": "p envSelect"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-173",
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
                                                    "id": "obj-1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        287.0,
                                                        131.0433349609375,
                                                        33.0,
                                                        21.0
                                                    ],
                                                    "text": "clear"
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
                                                        13.0,
                                                        246.0,
                                                        104.0,
                                                        21.0
                                                    ],
                                                    "text": "append user, count"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-171",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        118.0,
                                                        48.0433349609375,
                                                        54.0,
                                                        21.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-167",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        118.0,
                                                        93.0433349609375,
                                                        42.0,
                                                        21.0
                                                    ],
                                                    "text": "t b b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        250.0,
                                                        131.0433349609375,
                                                        33.0,
                                                        21.0
                                                    ],
                                                    "text": "clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-156",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        173.5,
                                                        254.0433349609375,
                                                        40.0,
                                                        21.0
                                                    ],
                                                    "text": "unjoin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-155",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        173.5,
                                                        301.5433349609375,
                                                        90.0,
                                                        21.0
                                                    ],
                                                    "text": "prepend append"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-154",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        121.5,
                                                        227.0433349609375,
                                                        63.0,
                                                        21.0
                                                    ],
                                                    "text": "route done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-152",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        121.5,
                                                        200.0433349609375,
                                                        92.0,
                                                        21.0
                                                    ],
                                                    "text": "route shortname"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-143",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        118.0,
                                                        137.0433349609375,
                                                        78.0,
                                                        21.0
                                                    ],
                                                    "text": "getshortname"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "embed_buffers": {
                                                        "cp.grainflow.app.envelopes.1": "grainflow.Hanning.aif",
                                                        "cp.grainflow.app.envelopes.2": "grainflow.Hamming.aif",
                                                        "cp.grainflow.app.envelopes.3": "grainflow.Kaiser.aif",
                                                        "cp.grainflow.app.envelopes.4": "grainflow.Triangle.aif",
                                                        "cp.grainflow.app.envelopes.5": "grainflow.Pluck.aif",
                                                        "cp.grainflow.app.envelopes.6": "grainflow.FatPluck.aif",
                                                        "cp.grainflow.app.envelopes.7": "grainflow.ReversePluck.aif",
                                                        "cp.grainflow.app.envelopes.8": "grainflow.ReverseFatPluck.aif"
                                                    },
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        118.0,
                                                        169.0433349609375,
                                                        207.0,
                                                        21.0
                                                    ],
                                                    "saved_object_attributes": {
                                                        "embed": 1
                                                    },
                                                    "text": "polybuffer~ cp.grainflow.app.envelopes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-172",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        199.75,
                                                        356.5433349609375,
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
                                                        "obj-20",
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
                                                        "obj-20",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-143",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-154",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-152",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-156",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-154",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-172",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-155",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-155",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-156",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-172",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-159",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-143",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-167",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-159",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-167",
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
                                                        "obj-167",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-167",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-171",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-172",
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
                                                        "obj-152",
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
                                                        "obj-167",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-20",
                                                        1
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-192",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        26.0,
                                        50.0,
                                        53.0,
                                        21.0
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
                                    "text": "p getEnv"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-153",
                                    "items": [
                                        "grainflow.Hanning",
                                        ",",
                                        "grainflow.Hamming",
                                        ",",
                                        "grainflow.Kaiser",
                                        ",",
                                        "grainflow.Triangle",
                                        ",",
                                        "grainflow.Pluck",
                                        ",",
                                        "grainflow.FatPluck",
                                        ",",
                                        "grainflow.ReversePluck",
                                        ",",
                                        "grainflow.ReverseFatPluck",
                                        ",",
                                        "user"
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
                                        26.0,
                                        75.0,
                                        100.0,
                                        21.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0.0,
                                        51.0,
                                        160.0,
                                        21.0
                                    ],
                                    "varname": "umenu"
                                }
                            },
                            {
                                "box": {
                                    "allowdrag": 0,
                                    "background": 1,
                                    "buffername": "cp.grainflow.app.envelopes.1",
                                    "id": "obj-127",
                                    "ignoreclick": 1,
                                    "labels": 0,
                                    "maxclass": "waveform~",
                                    "numinlets": 5,
                                    "numoutlets": 6,
                                    "outlettype": [
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "list",
                                        ""
                                    ],
                                    "outmode": 0,
                                    "patching_rect": [
                                        26.0,
                                        234.0,
                                        256.0,
                                        64.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0.0,
                                        0.0,
                                        160.0,
                                        50.0
                                    ],
                                    "ruler": 0,
                                    "selectioncolor": [
                                        1.0,
                                        1.0,
                                        1.0,
                                        1.0
                                    ],
                                    "voffset": 1.0,
                                    "vticks": 0,
                                    "vzoom": 0.5
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
                                    "source": [
                                        "obj-1",
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
                                    "source": [
                                        "obj-11",
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
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-176",
                                        1
                                    ],
                                    "source": [
                                        "obj-153",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-176",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-153",
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
                                    "order": 0,
                                    "source": [
                                        "obj-153",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-153",
                                        0
                                    ],
                                    "source": [
                                        "obj-173",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-127",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-176",
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
                                    "order": 0,
                                    "source": [
                                        "obj-176",
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
                                    "order": 0,
                                    "source": [
                                        "obj-176",
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
                                    "order": 1,
                                    "source": [
                                        "obj-176",
                                        1
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
                                        "obj-2",
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
                                        "obj-2",
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
                                        "obj-3",
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
                                    "order": 2,
                                    "source": [
                                        "obj-42",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-40",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-42",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-62",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-42",
                                        2
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
                                        "obj-46",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-42",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-47",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-61",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-47",
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
                                        "obj-48",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-153",
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
                                        "obj-61",
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
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-127",
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
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-188",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        1118.0,
                        294.0,
                        206.25,
                        90.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        633.25,
                        268.2816666666667,
                        164.0,
                        71.78166666666664
                    ],
                    "varname": "envelope",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "activebgoncolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "id": "obj-161",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1418.0,
                        319.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        243.25,
                        473.0,
                        81.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_invisible": 2,
                            "parameter_longname": "allOff",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "allOff",
                            "parameter_type": 2
                        }
                    },
                    "text": "Notes Off",
                    "varname": "keyboardNotesOff"
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1418.0,
                        347.0,
                        33.0,
                        20.0
                    ],
                    "text": "flush"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        352.0,
                        261.0,
                        54.0,
                        20.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1118.0,
                        265.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        801.25,
                        317.51749999999987,
                        96.25,
                        18.0
                    ],
                    "text": "Select Envelope"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "Classic mode takes a rate and random deviation, keyboard mode picks a random transposition of any enabled note",
                    "id": "obj-239",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        2175.0,
                        81.0,
                        15.0,
                        15.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        223.375,
                        422.0,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-238",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2056.0,
                        81.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        118.25,
                        422.0,
                        105.0,
                        18.0
                    ],
                    "text": "Transposition Mode"
                }
            },
            {
                "box": {
                    "id": "obj-237",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        2091.0,
                        311.0,
                        39.0,
                        95.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        818.5,
                        422.0,
                        21.0,
                        50.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                64
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bend",
                            "parameter_modmode": 2,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "bend",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "showname": 0,
                    "shownumber": 0,
                    "varname": "pitchbend"
                }
            },
            {
                "box": {
                    "id": "obj-236",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2091.0,
                        450.0,
                        107.0,
                        20.0
                    ],
                    "text": "expr pow(2\\,$f1/12)"
                }
            },
            {
                "box": {
                    "id": "obj-235",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2091.0,
                        422.0,
                        105.0,
                        20.0
                    ],
                    "text": "scale 0. 127. -3. 3."
                }
            },
            {
                "box": {
                    "id": "obj-232",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        2091.0,
                        289.0,
                        42.0,
                        20.0
                    ],
                    "text": "bendin"
                }
            },
            {
                "box": {
                    "id": "obj-229",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1846.0,
                        156.0,
                        65.0,
                        20.0
                    ],
                    "text": "rateMode 0"
                }
            },
            {
                "box": {
                    "id": "obj-228",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        1834.0,
                        126.0,
                        42.0,
                        20.0
                    ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-225",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1829.0,
                        179.0,
                        206.0,
                        20.0
                    ],
                    "text": "rateBuffer cp.grainflow.app.rate, rateMode 2"
                }
            },
            {
                "box": {
                    "id": "obj-224",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1834.0,
                        203.0,
                        153.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.messages"
                }
            },
            {
                "box": {
                    "id": "obj-221",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1834.0,
                        88.0,
                        155.0,
                        20.0
                    ],
                    "text": "r cp.grainflow.app.transMode"
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        1459.0,
                        118.0,
                        42.0,
                        20.0
                    ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-219",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1459.0,
                        73.0,
                        147.0,
                        20.0
                    ],
                    "text": "r cp.grainflow.app.transMode"
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1459.0,
                        231.0,
                        446.0,
                        20.0
                    ],
                    "text": "whitekeycolor 1 1 1 1, blackkeycolor 0 0 0 1, ignoreclick, 0 hkeycolor 0.047 0.365 1. 1"
                }
            },
            {
                "box": {
                    "id": "obj-215",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1475.0,
                        160.0,
                        476.0,
                        20.0
                    ],
                    "text": "whitekeycolor 1 1 1 0.5, blackkeycolor 0 0 0 0.5, ignoreclick 0, hkeycolor 0.047 0.365 1. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2053.0,
                        147.0,
                        156.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.transMode"
                }
            },
            {
                "box": {
                    "activebgoncolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "automation": "Classic",
                    "automationon": "Keyboard",
                    "id": "obj-203",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        2053.0,
                        103.0,
                        103.0,
                        33.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        422.0,
                        103.0,
                        22.0
                    ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "Classic",
                                "Keyboard"
                            ],
                            "parameter_linknames": 1,
                            "parameter_longname": "transpositionMode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "transpositionMode",
                            "parameter_type": 2
                        }
                    },
                    "text": "Classic",
                    "texton": "Keyboard",
                    "varname": "transpositionMode"
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                            1480.0,
                            493.0,
                            811.0,
                            687.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        705.0,
                                        375.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        496.0,
                                        466.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        584.0,
                                        430.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        79.0,
                                        262.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "route 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        63.0,
                                        460.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        20.5,
                                        342.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t l 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        407.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "bang",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        36.0,
                                        134.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "t 0 b 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-26",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        295.5,
                                        27.5,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        264.0,
                                        94.0,
                                        74.5,
                                        21.0
                                    ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-193",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        180.0,
                                        241.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "- 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "dump"
                                    ],
                                    "patching_rect": [
                                        264.0,
                                        131.0,
                                        44.0,
                                        21.0
                                    ],
                                    "text": "t dump"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        36.5,
                                        303.0,
                                        49.0,
                                        21.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-21",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        31.0,
                                        476.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        660.0,
                                        397.0,
                                        155.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.transMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        619.0,
                                        469.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        358.0,
                                        70.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        274.0,
                                        163.0,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        472.0,
                                        499.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        472.0,
                                        574.0,
                                        139.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.keyson"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        613.0,
                                        397.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        619.0,
                                        512.5,
                                        139.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.keyson"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        495.0,
                                        262.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        495.0,
                                        291.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "t b b"
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
                                        96.0,
                                        337.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        501.0,
                                        380.0,
                                        41.0,
                                        21.0
                                    ],
                                    "text": "zlclear"
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
                                        274.0,
                                        489.0,
                                        66.0,
                                        21.0
                                    ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        233.5,
                                        414.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        101.0,
                                        461.0,
                                        160.0,
                                        21.0
                                    ],
                                    "text": "vexpr $f1*$f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        96.0,
                                        390.0,
                                        37.0,
                                        21.0
                                    ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        233.5,
                                        380.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        401.0,
                                        380.0,
                                        51.0,
                                        21.0
                                    ],
                                    "text": "samps 1"
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
                                        605.0,
                                        329.0,
                                        53.0,
                                        21.0
                                    ],
                                    "text": "gate"
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
                                        101.0,
                                        503.0,
                                        51.0,
                                        21.0
                                    ],
                                    "text": "deferlow"
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
                                        365.0,
                                        278.0,
                                        33.0,
                                        21.0
                                    ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        372.0,
                                        231.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-204",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        372.0,
                                        32.0,
                                        155.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.transMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-199",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 7,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "",
                                        "int",
                                        "zlclear"
                                    ],
                                    "patching_rect": [
                                        130.5,
                                        102.0,
                                        103.0,
                                        21.0
                                    ],
                                    "text": "t b b b b l 1 zlclear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-198",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        147.5,
                                        282.0,
                                        107.0,
                                        21.0
                                    ],
                                    "text": "expr pow(2\\,$f1/12)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-192",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        101.0,
                                        586.0,
                                        150.0,
                                        21.0
                                    ],
                                    "text": "peek~ cp.grainflow.app.rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-191",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        295.5,
                                        369.0,
                                        57.0,
                                        21.0
                                    ],
                                    "text": "samps $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-189",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        303.5,
                                        337.0,
                                        35.0,
                                        21.0
                                    ],
                                    "text": "zl.len"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-188",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        146.5,
                                        364.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "t l l 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-187",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "list"
                                    ],
                                    "patching_rect": [
                                        101.0,
                                        547.0,
                                        64.0,
                                        21.0
                                    ],
                                    "text": "listfunnel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-185",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        79.0,
                                        215.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-184",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        80.0,
                                        189.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!= 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-182",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        111.75,
                                        231.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-175",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        274.0,
                                        195.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-174",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        147.5,
                                        329.0,
                                        49.0,
                                        21.0
                                    ],
                                    "text": "zl.group"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-162",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130.5,
                                        78.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-161",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130.5,
                                        153.0,
                                        79.0,
                                        21.0
                                    ],
                                    "text": "prepend store"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-158",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        129.5,
                                        183.0,
                                        50.5,
                                        21.0
                                    ],
                                    "saved_object_attributes": {
                                        "embed": 0,
                                        "precision": 6
                                    },
                                    "text": "coll"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-156",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        303.5,
                                        430.0,
                                        212.0,
                                        21.0
                                    ],
                                    "text": "buffer~ cp.grainflow.app.rate @samps 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-200",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        130.5,
                                        18.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-201",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        165.5,
                                        18.0,
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
                                        "obj-12",
                                        1
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
                                        "obj-9",
                                        0
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
                                        "obj-11",
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
                                        "obj-175",
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
                                        "obj-156",
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
                                        "obj-182",
                                        1
                                    ],
                                    "source": [
                                        "obj-158",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-184",
                                        0
                                    ],
                                    "source": [
                                        "obj-158",
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
                                        "obj-158",
                                        0
                                    ],
                                    "source": [
                                        "obj-161",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-199",
                                        0
                                    ],
                                    "source": [
                                        "obj-162",
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
                                        "obj-17",
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
                                        "obj-17",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-188",
                                        0
                                    ],
                                    "source": [
                                        "obj-174",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-174",
                                        0
                                    ],
                                    "source": [
                                        "obj-175",
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
                                        "obj-18",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-54",
                                        0
                                    ],
                                    "source": [
                                        "obj-182",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-185",
                                        0
                                    ],
                                    "source": [
                                        "obj-184",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-182",
                                        0
                                    ],
                                    "source": [
                                        "obj-185",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-192",
                                        0
                                    ],
                                    "source": [
                                        "obj-187",
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
                                    "order": 1,
                                    "source": [
                                        "obj-188",
                                        2
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
                                        "obj-188",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-189",
                                        0
                                    ],
                                    "source": [
                                        "obj-188",
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
                                    "order": 0,
                                    "source": [
                                        "obj-188",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-191",
                                        0
                                    ],
                                    "source": [
                                        "obj-189",
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
                                        "obj-19",
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
                                        "obj-19",
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
                                        "obj-156",
                                        0
                                    ],
                                    "source": [
                                        "obj-191",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-198",
                                        0
                                    ],
                                    "source": [
                                        "obj-193",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-174",
                                        0
                                    ],
                                    "source": [
                                        "obj-198",
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
                                        "obj-199",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-161",
                                        0
                                    ],
                                    "source": [
                                        "obj-199",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-174",
                                        0
                                    ],
                                    "source": [
                                        "obj-199",
                                        6
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
                                        "obj-199",
                                        3
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
                                        "obj-199",
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
                                        "obj-199",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
                                        1
                                    ],
                                    "source": [
                                        "obj-199",
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
                                    "source": [
                                        "obj-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-162",
                                        0
                                    ],
                                    "source": [
                                        "obj-200",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-162",
                                        1
                                    ],
                                    "source": [
                                        "obj-201",
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
                                        "obj-204",
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
                                        "obj-22",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-158",
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
                                        "obj-158",
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
                                        "obj-22",
                                        0
                                    ],
                                    "source": [
                                        "obj-25",
                                        1
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
                                        "obj-25",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-27",
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
                                        "obj-24",
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
                                        "obj-21",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-27",
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
                                    "order": 0,
                                    "source": [
                                        "obj-27",
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
                                        "obj-28",
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
                                        "obj-29",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-156",
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
                                        "obj-21",
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
                                        "obj-27",
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
                                        "obj-187",
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
                                        "obj-15",
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
                                        "obj-193",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-54",
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
                                    "order": 1,
                                    "source": [
                                        "obj-54",
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
                                        "obj-54",
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
                                        "obj-57",
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
                                        "obj-6",
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
                                    "order": 0,
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
                                    "order": 1,
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
                                    "source": [
                                        "obj-8",
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
                                    "order": 1,
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-34",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-196",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        1459.0,
                        488.0,
                        651.1692708333333,
                        20.0
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
                    "text": "p transpositionBuffer"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1479.0,
                        282.0,
                        317.0,
                        20.0
                    ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "blackkeycolor": [
                        0.0,
                        0.0,
                        0.0,
                        0.5
                    ],
                    "hkeycolor": [
                        0.047,
                        0.365,
                        1.0,
                        0.5
                    ],
                    "id": "obj-157",
                    "maxclass": "kslider",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 24,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1459.0,
                        405.0,
                        612.0,
                        53.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        243.25,
                        422.0,
                        561.0,
                        49.0
                    ],
                    "range": 88,
                    "whitekeycolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.5
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        504.0,
                        25.0,
                        55.0,
                        20.0
                    ],
                    "restore": {
                        "GrainDelayRandom": [
                            2753.825553531193
                        ],
                        "clickmode": [
                            1.0
                        ],
                        "freeze": [
                            0.0
                        ],
                        "getRecFile": [
                            0.0
                        ],
                        "grainDirection": [
                            1.0
                        ],
                        "grainFreq": [
                            162.53944667710283
                        ],
                        "grainLength": [
                            159.70444540889065
                        ],
                        "grainPeriod": [
                            6.152352677726146
                        ],
                        "grainSizeRandom": [
                            23.622047244094468
                        ],
                        "keyboardNotesOff": [
                            0.0
                        ],
                        "output": [
                            -3.341730566850785
                        ],
                        "panningCenter": [
                            0.0
                        ],
                        "panningSpread": [
                            100.0
                        ],
                        "pitchbend": [
                            64.0
                        ],
                        "rate": [
                            0.0
                        ],
                        "record": [
                            0.0
                        ],
                        "soundfile": [
                            "FemVoice.aif"
                        ],
                        "transpose": [
                            0.0
                        ],
                        "transposeRandom": [
                            0.0
                        ],
                        "transpositionMode": [
                            0.0
                        ],
                        "volume": [
                            100.0
                        ],
                        "volumeRandom": [
                            0.0
                        ]
                    },
                    "text": "autopattr",
                    "varname": "u955003183"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        539.0,
                        286.0,
                        32.0,
                        20.0
                    ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        539.0,
                        315.0,
                        146.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.onCheck"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        0.16
                    ],
                    "color": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "elementcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-32",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        179.0,
                        45.0,
                        45.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        27.75,
                        527.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "autoscroll": 0,
                    "bgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "bordercolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "id": "obj-123",
                    "ignoreclick": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [
                        48.0,
                        535.0,
                        110.58333333333326,
                        24.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        361.5000000000001,
                        554.0,
                        121.99999999999989,
                        23.0
                    ],
                    "tabmode": 0,
                    "textcolor": [
                        0.396078431372549,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "wordwrap": 0
                }
            },
            {
                "box": {
                    "autoscroll": 0,
                    "bgcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "bordercolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.0
                    ],
                    "id": "obj-53",
                    "ignoreclick": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [
                        95.0,
                        507.0,
                        199.0,
                        23.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        358.25,
                        522.0,
                        132.0,
                        23.0
                    ],
                    "tabmode": 0,
                    "text": "Desktop:/grainflow.aiff",
                    "textcolor": [
                        0.396078431372549,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "wordwrap": 0
                }
            },
            {
                "box": {
                    "activebgoncolor": [
                        1.0,
                        0.196078431372549,
                        0.196078431372549,
                        1.0
                    ],
                    "activetextoncolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-48",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        48.0,
                        420.0,
                        97.0,
                        23.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        259.25,
                        554.0,
                        97.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_invisible": 2,
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "Record",
                    "texton": "Recording",
                    "varname": "record"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        157.0,
                        414.0,
                        97.0,
                        23.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        259.25,
                        521.0,
                        97.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_invisible": 2,
                            "parameter_longname": "live.text",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "Open file to record",
                    "varname": "getRecFile"
                }
            },
            {
                "box": {
                    "args": [
                        "playbuttons"
                    ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-117",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "",
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
                            708.0,
                            292.0,
                            640.0,
                            480.0
                        ],
                        "openinpresentation": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "globalpatchername": "parent",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        481.5,
                                        158.47247314453125,
                                        132.0,
                                        21.0
                                    ],
                                    "text": "0, active 1, ignoreclick 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        453.5,
                                        72.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
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
                                        453.5,
                                        112.47247314453125,
                                        62.0,
                                        21.0
                                    ],
                                    "text": "0, active 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        464.25,
                                        41.0,
                                        151.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.clickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        365.0,
                                        62.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "del 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        365.0,
                                        85.0,
                                        51.0,
                                        21.0
                                    ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        362.5,
                                        37.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        492.0,
                                        221.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "activebgoncolor": [
                                        1.0,
                                        0.709803921568627,
                                        0.196078431372549,
                                        0.0
                                    ],
                                    "bgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "bordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "focusbordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "hint": "Looping mode- repeat or pingong",
                                    "id": "obj-4",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        460.5,
                                        251.47247314453125,
                                        63.0,
                                        33.0
                                    ],
                                    "pictures": [
                                        "grainflow.icon.repeat.svg",
                                        "grainflow.icon.pingpong.svg"
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        95.5,
                                        0.5,
                                        31.0,
                                        28.304347826086957
                                    ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [
                                                "val1",
                                                "val2"
                                            ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "pingpong",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "pingpong",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [
                                        0.0,
                                        0.0,
                                        0.0,
                                        1.0
                                    ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "pingpong"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-152",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        460.5,
                                        292.0,
                                        150.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.pingpong"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        309.25,
                                        341.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        219.5,
                                        346.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        155.5,
                                        346.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        228.5,
                                        31.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        162.5,
                                        37.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        99.0,
                                        41.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-178",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        212.0,
                                        175.97247314453125,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-176",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        260.25,
                                        244.47247314453125,
                                        128.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.state"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-175",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        77.0,
                                        150.47247314453125,
                                        85.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 0, 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-174",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        247.5,
                                        108.47247314453125,
                                        85.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 0, 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-173",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        243.5,
                                        214.47247314453125,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-170",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        305.5,
                                        208.97247314453125,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "t 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-171",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        254.0,
                                        136.47247314453125,
                                        72.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-168",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        66.0,
                                        276.47247314453125,
                                        117.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.dir"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-167",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        214.47247314453125,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "t 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-164",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        251.47247314453125,
                                        128.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.state"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-160",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        63.0,
                                        175.97247314453125,
                                        72.0,
                                        21.0
                                    ],
                                    "text": "ignoreclick 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-158",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        142.25,
                                        214.47247314453125,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-155",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        155.5,
                                        141.47247314453125,
                                        85.0,
                                        21.0
                                    ],
                                    "text": "0, ignoreclick 0"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "activebgoncolor": [
                                        1.0,
                                        0.709803921568627,
                                        0.196078431372549,
                                        0.0
                                    ],
                                    "activetextoncolor": [
                                        0.427,
                                        0.843,
                                        1.0,
                                        1.0
                                    ],
                                    "bgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "bordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "focusbordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "hint": "stop",
                                    "id": "obj-151",
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        148.5,
                                        108.47247314453125,
                                        44.0,
                                        15.0
                                    ],
                                    "pictures": [
                                        "grainflow.icon.stop.svg",
                                        "grainflow.icon.stop.svg"
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        31.5,
                                        0.5,
                                        31.0,
                                        28.304347826086957
                                    ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [
                                                "val1",
                                                "val2"
                                            ],
                                            "parameter_longname": "stop",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "stop",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [
                                        0.0,
                                        0.0,
                                        0.0,
                                        1.0
                                    ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "stop"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "activebgoncolor": [
                                        1.0,
                                        0.709803921568627,
                                        0.196078431372549,
                                        0.0
                                    ],
                                    "activetextoncolor": [
                                        0.427,
                                        0.843,
                                        1.0,
                                        1.0
                                    ],
                                    "bgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "bordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "focusbordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "hint": "play backward",
                                    "id": "obj-150",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        142.25,
                                        186.97247314453125,
                                        44.0,
                                        15.0
                                    ],
                                    "pictures": [
                                        "grainflow.icon.playBackward.svg",
                                        "grainflow.icon.playBackward.svg"
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0.5,
                                        0.5,
                                        31.0,
                                        28.304347826086957
                                    ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [
                                                "val1",
                                                "val2"
                                            ],
                                            "parameter_longname": "play backward",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "play backward",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [
                                        0.0,
                                        0.0,
                                        0.0,
                                        1.0
                                    ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "play backward"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "activebgoncolor": [
                                        1.0,
                                        0.709803921568627,
                                        0.196078431372549,
                                        0.0
                                    ],
                                    "activetextoncolor": [
                                        0.427,
                                        0.843,
                                        1.0,
                                        1.0
                                    ],
                                    "bgcolor": [
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.647058823529412,
                                        0.0
                                    ],
                                    "bordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "focusbordercolor": [
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.313725490196078,
                                        0.0
                                    ],
                                    "hint": "Play forward",
                                    "id": "obj-148",
                                    "ignoreclick": 1,
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        243.5,
                                        186.97247314453125,
                                        44.0,
                                        15.0
                                    ],
                                    "pictures": [
                                        "grainflow.icon.playForward.svg",
                                        "grainflow.icon.playForward.svg"
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        62.5,
                                        0.5,
                                        31.0,
                                        28.304347826086957
                                    ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [
                                                "val1",
                                                "val2"
                                            ],
                                            "parameter_longname": "play forward",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_osc_name": "<default>",
                                            "parameter_shortname": "play forward",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [
                                        0.0,
                                        0.0,
                                        0.0,
                                        1.0
                                    ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "play forward"
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
                                        "obj-10",
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
                                        "obj-11",
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
                                        "obj-114",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-150",
                                        0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-151",
                                        0
                                    ],
                                    "order": 2,
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
                                    "order": 0,
                                    "source": [
                                        "obj-13",
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
                                    "source": [
                                        "obj-14",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-173",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-148",
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
                                    "order": 0,
                                    "source": [
                                        "obj-148",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-150",
                                        0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-151",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-15",
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
                                    "order": 0,
                                    "source": [
                                        "obj-15",
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
                                    "order": 0,
                                    "source": [
                                        "obj-150",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-158",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-150",
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
                                    "order": 0,
                                    "source": [
                                        "obj-151",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-155",
                                        0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-151",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-178",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-151",
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
                                    "order": 1,
                                    "source": [
                                        "obj-151",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-155",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-150",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-155",
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
                                    "order": 0,
                                    "source": [
                                        "obj-158",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-160",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-158",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-167",
                                        0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-158",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-174",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-158",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-150",
                                        0
                                    ],
                                    "source": [
                                        "obj-160",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-164",
                                        0
                                    ],
                                    "source": [
                                        "obj-167",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-168",
                                        0
                                    ],
                                    "source": [
                                        "obj-167",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-164",
                                        0
                                    ],
                                    "source": [
                                        "obj-170",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-168",
                                        0
                                    ],
                                    "source": [
                                        "obj-170",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "source": [
                                        "obj-171",
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
                                    "order": 0,
                                    "source": [
                                        "obj-173",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-170",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-173",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-171",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-173",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-175",
                                        0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-173",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-148",
                                        0
                                    ],
                                    "source": [
                                        "obj-174",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-150",
                                        0
                                    ],
                                    "source": [
                                        "obj-175",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-176",
                                        0
                                    ],
                                    "source": [
                                        "obj-178",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-152",
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
                                        "obj-150",
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
                                        "obj-151",
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
                                        "obj-148",
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
                                        "obj-10",
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
                                        "obj-155",
                                        0
                                    ],
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-199",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        352.0,
                        300.0,
                        140.0,
                        34.5
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        222.25,
                        251.5,
                        134.75,
                        30.0
                    ],
                    "varname": "bpatcher",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1113.0,
                        242.0,
                        155.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.panCenter"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1163.0,
                        196.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        472.5,
                        304.00000000000006,
                        86.5,
                        18.0
                    ],
                    "text": "Panning Center"
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "id": "obj-97",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1113.0,
                        196.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        426.0,
                        306.0,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "panningCenter",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "panningCenter",
                            "parameter_type": 0,
                            "parameter_unitstyle": 6
                        }
                    },
                    "varname": "panningCenter"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        877.0,
                        260.0,
                        103.0,
                        20.0
                    ],
                    "text": "expr $f1/100*0.95"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        877.0,
                        323.0,
                        153.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.messages"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "Random volume per grain",
                    "id": "obj-28",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1028.0,
                        237.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        561.0,
                        379.4366666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        927.0,
                        237.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        472.5,
                        379.4366666666667,
                        91.0,
                        18.0
                    ],
                    "text": "Volume Random"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-67",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        877.0,
                        237.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        426.0,
                        381.4366666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "volumeRandom",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "volumeRandom",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "volumeRandom"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        877.0,
                        294.0,
                        88.0,
                        20.0
                    ],
                    "text": "ampRandom $1"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-146",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        303.0,
                        13.0,
                        147.0,
                        64.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        275.875,
                        15.0,
                        312.0,
                        35.0
                    ],
                    "text": "Basic Granulator",
                    "textcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "how divergent the stereo field is",
                    "id": "obj-145",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1265.0,
                        103.0,
                        18.0,
                        15.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        561.0,
                        328.06333333333333,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1167.0,
                        103.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        472.5,
                        328.06333333333333,
                        82.0,
                        18.0
                    ],
                    "text": "Paning Spread"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1118.0,
                        134.0,
                        41.0,
                        20.0
                    ],
                    "text": "* 0.01"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-141",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1113.0,
                        103.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        426.0,
                        330.06333333333333,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "panningSpread",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "panningSpread",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "panningSpread"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        539.0,
                        261.0,
                        152.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.clickMode"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.647058823529412,
                        0.647058823529412,
                        0.647058823529412,
                        0.0
                    ],
                    "activebgoncolor": [
                        0.427450980392157,
                        0.843137254901961,
                        1.0,
                        0.0
                    ],
                    "activetextoncolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "bgcolor": [
                        0.647058823529412,
                        0.647058823529412,
                        0.647058823529412,
                        0.0
                    ],
                    "bgoncolor": [
                        0.764705882352941,
                        0.764705882352941,
                        0.764705882352941,
                        0.0
                    ],
                    "bordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "focusbordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "hint": "Toggle click to play functionality ",
                    "id": "obj-21",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        539.0,
                        227.0,
                        99.5,
                        28.75
                    ],
                    "pictures": [
                        "grainflow.icon.click.svg",
                        "grainflow.icon.click.svg"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        545.25,
                        251.5,
                        33.0,
                        24.0
                    ],
                    "remapsvgcolors": 1,
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_linknames": 1,
                            "parameter_longname": "clickmode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "clickmode",
                            "parameter_type": 2
                        }
                    },
                    "text": "Click Mode",
                    "texton": "Click Mode Enabled",
                    "usepicture": 1,
                    "usesvgviewbox": 1,
                    "varname": "clickmode"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1113.0,
                        160.0,
                        158.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.panSpread"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "Amount of randomness applied to the grain size",
                    "id": "obj-92",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1032.0,
                        108.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        366.25,
                        328.43666666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The duration of each grain",
                    "id": "obj-91",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1223.0,
                        420.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        336.25,
                        302.0,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The rate at which grains occur",
                    "id": "obj-90",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1191.0,
                        390.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        155.9999989271164,
                        328.43666666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The time between each grain",
                    "id": "obj-89",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1074.0,
                        369.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        135.0,
                        304.0,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 48.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        13.0,
                        281.75,
                        64.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.0,
                        0.5,
                        260.0,
                        64.0
                    ],
                    "text": "GrainFlow",
                    "textcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The bipolar depth of random transposition that can be applyied top each grain",
                    "id": "obj-77",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1655.0,
                        544.0,
                        15.0,
                        15.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        166.25,
                        470.4366666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "Transposition applyied to each grain via playback rate",
                    "id": "obj-75",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1823.0,
                        575.0,
                        15.0,
                        15.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        126.25,
                        449.4366666666667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "embed": 1,
                    "forceaspect": 1,
                    "hint": "The Maximum random dellay added to the traversal when grains are generated",
                    "id": "obj-74",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1315.0,
                        504.0,
                        15.0,
                        17.0
                    ],
                    "pic": "info.svg",
                    "presentation": 1,
                    "presentation_rect": [
                        178.999999,
                        357.436667,
                        12.0,
                        12.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                            2504.0,
                            222.0,
                            640.0,
                            1120.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        124.0,
                                        659.0,
                                        24.0,
                                        24.0
                                    ],
                                    "svg": ""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        628.0,
                                        50.0,
                                        33.0
                                    ],
                                    "text": "0.060392"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        240.0,
                                        659.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        291.9166666666668,
                                        669.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        240.0,
                                        629.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        286.91666666666674,
                                        633.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        312.91666666666674,
                                        543.0,
                                        24.0,
                                        24.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        447.0,
                                        708.0,
                                        50.0,
                                        33.0
                                    ],
                                    "text": "0.060392"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        196.0,
                                        773.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "+ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        26.0,
                                        750.0,
                                        66.0,
                                        21.0
                                    ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        214.91666666666669,
                                        830.0,
                                        93.0,
                                        21.0
                                    ],
                                    "text": "rate~ 2 @sync 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        211.41666666666669,
                                        889.0,
                                        100.0,
                                        21.0
                                    ],
                                    "text": "scale~ -1. 1. 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        121.16666666666669,
                                        916.0,
                                        76.0,
                                        21.0
                                    ],
                                    "text": "selector~ 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        211.41666666666669,
                                        853.0,
                                        75.0,
                                        21.0
                                    ],
                                    "text": "triangle~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        436.6666666666667,
                                        786.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        442.0,
                                        867.0,
                                        32.0,
                                        21.0
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        442.0,
                                        902.0,
                                        62.0,
                                        21.0
                                    ],
                                    "text": "snapshot~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        391.6666666666667,
                                        822.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        436.6666666666667,
                                        745.5,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.pingpong"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-163",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        65.0,
                                        128.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.state"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-169",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        299.16666666666674,
                                        65.25,
                                        127.16666666666663,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.dir"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-276",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485.0,
                                        120.0,
                                        154.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.freezeTrav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-275",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        18.000000343750003,
                                        142.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.travrate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        262.0,
                                        508.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!/ 1."
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
                                        "float"
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        531.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        578.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        470.0,
                                        30.0,
                                        21.0
                                    ],
                                    "text": "!- 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        439.0502933437501,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "unjoin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-96",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        408.0502933437501,
                                        148.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.selRange"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        485.0,
                                        149.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        357.91666666666674,
                                        260.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        126.16666666666669,
                                        176.36865234375,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        411.0,
                                        259.36865234375,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        146.66666666666669,
                                        259.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "f 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        422.5,
                                        296.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "f 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        69.66666666666669,
                                        473.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "f 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        169.36865234375,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        442.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "f 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        302.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        262.91666666666674,
                                        272.36865234375,
                                        74.0,
                                        21.0
                                    ],
                                    "text": "expr $f1*2-1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        483.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        101.36865234375,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t f b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        157.16666666666669,
                                        144.36865234375,
                                        163.0,
                                        21.0
                                    ],
                                    "text": "expr 1/($f2/1000)*pow(2\\,$f1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
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
                                        228.91666666666669,
                                        107.36865234375,
                                        122.0,
                                        21.0
                                    ],
                                    "text": "info~ cp.grainflow.app"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-274",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        121.16666666666669,
                                        1036.0,
                                        177.0,
                                        21.0
                                    ],
                                    "text": "send~ cp.grainflow.app.grainTrav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        377.6666666666667,
                                        625.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "t i i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        389.1666666666667,
                                        759.0,
                                        22.0,
                                        21.0
                                    ],
                                    "text": "t 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        115.16666666666669,
                                        725.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        377.6666666666667,
                                        725.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        377.6666666666667,
                                        585.5,
                                        151.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.clickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
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
                                            "revision": 2,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [
                                            530.0,
                                            449.0,
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
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        395.0,
                                                        424.0,
                                                        140.0,
                                                        21.0
                                                    ],
                                                    "text": "s cp.grainflow.app.volume"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        405.0,
                                                        305.0,
                                                        31.0,
                                                        21.0
                                                    ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-153",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        239.5,
                                                        242.0,
                                                        179.0,
                                                        21.0
                                                    ],
                                                    "text": "s cp.grainflow.app.stateClickMode"
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
                                                        312.5,
                                                        137.0,
                                                        151.0,
                                                        21.0
                                                    ],
                                                    "text": "r cp.grainflow.app.clickMode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        180.5,
                                                        223.0,
                                                        31.0,
                                                        21.0
                                                    ],
                                                    "text": "gate"
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
                                                        192.5,
                                                        323.0,
                                                        31.0,
                                                        21.0
                                                    ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        198.0,
                                                        295.5,
                                                        153.0,
                                                        21.0
                                                    ],
                                                    "text": "r cp.grainflow.app.shiftDown"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-116",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        24.5,
                                                        273.5,
                                                        151.0,
                                                        21.0
                                                    ],
                                                    "text": "r cp.grainflow.app.clickMode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        33.0,
                                                        313.0,
                                                        31.0,
                                                        21.0
                                                    ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        45.0,
                                                        242.0,
                                                        31.0,
                                                        21.0
                                                    ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        180.5,
                                                        147.0,
                                                        29.5,
                                                        21.0
                                                    ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-121",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        56.5,
                                                        137.0,
                                                        40.0,
                                                        21.0
                                                    ],
                                                    "text": "unjoin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-120",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        56.5,
                                                        92.0,
                                                        167.0,
                                                        21.0
                                                    ],
                                                    "text": "r cp.grainflow.app.clickMessage"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-130",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        50.0,
                                                        437.0,
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
                                                        "obj-1",
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
                                                        "obj-153",
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
                                                        "obj-10",
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
                                                        "obj-2",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-116",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-121",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-120",
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
                                                        "obj-121",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-124",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-121",
                                                        2
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-4",
                                                        1
                                                    ],
                                                    "source": [
                                                        "obj-121",
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
                                                    "order": 2,
                                                    "source": [
                                                        "obj-124",
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
                                                    "order": 1,
                                                    "source": [
                                                        "obj-124",
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
                                                    "order": 0,
                                                    "source": [
                                                        "obj-124",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "obj-130",
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
                                                        "obj-3",
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
                                                        "obj-7",
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
                                                        "obj-130",
                                                        0
                                                    ],
                                                    "source": [
                                                        "obj-7",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-203",
                                        "editing_bgcolor": [
                                            0.956862745098039,
                                            0.956862745098039,
                                            0.956862745098039,
                                            1.0
                                        ]
                                    },
                                    "patching_rect": [
                                        244.16666666666674,
                                        718.0,
                                        74.0,
                                        21.0
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
                                    "text": "p clickPhasor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        121.16666666666669,
                                        954.0,
                                        81.0,
                                        21.0
                                    ],
                                    "text": "scale~ 0 1 0 1"
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
                                        228.91666666666669,
                                        803.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "unjoin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        228.91666666666669,
                                        765.0,
                                        148.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.selRange"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        121.16666666666669,
                                        803.0,
                                        61.0,
                                        21.0
                                    ],
                                    "text": "phasor~ 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-53",
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
                                        "obj-55",
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
                                        "obj-14",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-18",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-8",
                                        1
                                    ],
                                    "order": 2,
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
                                    "source": [
                                        "obj-11",
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
                                        "obj-116",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-76",
                                        4
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
                                        "obj-76",
                                        3
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
                                        "obj-12",
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
                                        "obj-16",
                                        0
                                    ],
                                    "source": [
                                        "obj-131",
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
                                        "obj-36",
                                        0
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
                                        "obj-14",
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
                                        "obj-14",
                                        1
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
                                        "obj-31",
                                        0
                                    ],
                                    "source": [
                                        "obj-163",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-74",
                                        0
                                    ],
                                    "source": [
                                        "obj-169",
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
                                        "obj-19",
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
                                        "obj-2",
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
                                        "obj-23",
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
                                        "obj-24",
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
                                        "obj-25",
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
                                        "obj-27",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-65",
                                        0
                                    ],
                                    "source": [
                                        "obj-275",
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
                                        "obj-276",
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
                                    "order": 1,
                                    "source": [
                                        "obj-28",
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
                                    "order": 0,
                                    "source": [
                                        "obj-28",
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
                                        "obj-29",
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
                                    "source": [
                                        "obj-3",
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
                                        "obj-32",
                                        0
                                    ],
                                    "source": [
                                        "obj-31",
                                        1
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
                                        "obj-32",
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
                                        "obj-33",
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
                                        "obj-34",
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
                                        "obj-35",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-29",
                                        2
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-35",
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
                                        "obj-36",
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
                                    "order": 1,
                                    "source": [
                                        "obj-37",
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
                                    "order": 0,
                                    "source": [
                                        "obj-37",
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
                                        "obj-38",
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
                                        "obj-5",
                                        1
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
                                        "obj-30",
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
                                        "obj-30",
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
                                        "obj-51",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-53",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-52",
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
                                        "obj-58",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-53",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-30",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-54",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-52",
                                        1
                                    ],
                                    "source": [
                                        "obj-54",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-52",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-54",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-54",
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
                                        "obj-58",
                                        1
                                    ],
                                    "source": [
                                        "obj-57",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-54",
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
                                        "obj-5",
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
                                        "obj-57",
                                        0
                                    ],
                                    "source": [
                                        "obj-65",
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
                                        "obj-65",
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
                                        "obj-72",
                                        0
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
                                        "obj-74",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-72",
                                        1
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
                                        "obj-72",
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
                                        "obj-274",
                                        0
                                    ],
                                    "source": [
                                        "obj-76",
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
                                        "obj-9",
                                        2
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
                                        "obj-9",
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
                                        "obj-96",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-97",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-96",
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
                                        "obj-97",
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
                                        "obj-97",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-201",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        25.0,
                        119.0,
                        62.0,
                        20.0
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
                    "text": "p traversal"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        877.0,
                        188.0,
                        153.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.messages"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        877.0,
                        133.0,
                        103.0,
                        20.0
                    ],
                    "text": "expr $f1/100*0.99"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        927.0,
                        108.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        259.0,
                        328.43666666666667,
                        105.25,
                        18.0
                    ],
                    "text": "Grain Size Random"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-63",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        877.0,
                        108.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        206.25,
                        328.43666666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "grainSizeRandom",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "grainSizeRandom",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "grainSizeRandom"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        877.0,
                        158.0,
                        94.0,
                        20.0
                    ],
                    "text": "spaceRandom $1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.647058823529412,
                        0.647058823529412,
                        0.647058823529412,
                        0.0
                    ],
                    "activebgoncolor": [
                        0.427450980392157,
                        0.843137254901961,
                        1.0,
                        0.0
                    ],
                    "activetextoncolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "bgcolor": [
                        0.647058823529412,
                        0.647058823529412,
                        0.647058823529412,
                        0.0
                    ],
                    "bgoncolor": [
                        0.764705882352941,
                        0.764705882352941,
                        0.764705882352941,
                        0.05
                    ],
                    "bordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "focusbordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "hint": "Freeze the traversal position",
                    "id": "obj-49",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        414.0,
                        159.0,
                        44.0,
                        15.0
                    ],
                    "pictures": [
                        "grainflow.icon.freeze.svg",
                        "grainflow.icon.freeze.svg"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        499.25,
                        248.5,
                        44.0,
                        33.0
                    ],
                    "remapsvgcolors": 1,
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_longname": "freeze",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "freeze",
                            "parameter_type": 2
                        }
                    },
                    "text": "Freeze",
                    "texton": "Unfrereze",
                    "usepicture": 1,
                    "usesvgviewbox": 1,
                    "varname": "freeze"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1755.0,
                        581.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        64.25,
                        449.4366666666667,
                        60.0,
                        18.0
                    ],
                    "text": "Transpose"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1549.0,
                        552.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        60.25,
                        470.4366666666667,
                        104.0,
                        18.0
                    ],
                    "text": "Transpose Random"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-16",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1459.0,
                        552.0,
                        86.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        470.4366666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "transposeRandom",
                            "parameter_mmax": 24.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "transposeRandom",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "transposeRandom"
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "id": "obj-13",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1661.0,
                        581.0,
                        92.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        449.4366666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "transpose",
                            "parameter_mmax": 24.0,
                            "parameter_mmin": -24.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "transpose",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "transpose"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1195.0,
                        506.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        63.0,
                        357.43666666666667,
                        113.9999989271164,
                        18.0
                    ],
                    "text": "Grain Delay Random"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1145.0,
                        555.0,
                        153.0,
                        20.0
                    ],
                    "text": "s cp.grainflow.app.messages"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-103",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1145.0,
                        506.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        359.43666666666667,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.0,
                            "parameter_initial": [
                                568.0046278562362
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "GrainDelayRandom",
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "GrainDelayRandom",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "GrainDelayRandom"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1145.0,
                        528.0,
                        83.0,
                        20.0
                    ],
                    "text": "delayRandom $1"
                }
            },
            {
                "box": {
                    "clip_size": 1,
                    "coldcolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "hotcolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "id": "obj-71",
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
                    "overloadcolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        34.0,
                        271.0,
                        101.0,
                        47.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        87.9999989271164,
                        532.0,
                        152.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "output",
                            "parameter_mmax": 24.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "Output",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "output",
                    "warmcolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        34.0,
                        369.0,
                        53.0,
                        20.0
                    ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "focusbordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "hint": "adjust the traversal rate",
                    "id": "obj-66",
                    "maxclass": "live.slider",
                    "modulationcolor": [
                        0.427450980392157,
                        0.843137254901961,
                        1.0,
                        0.0
                    ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        365.0,
                        121.0,
                        114.0,
                        27.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        352.25,
                        251.5,
                        145.0,
                        27.0
                    ],
                    "saved_attribute_attributes": {
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "modulationcolor": {
                            "expression": ""
                        },
                        "slidercolor": {
                            "expression": ""
                        },
                        "tribordercolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "trioncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "rate",
                            "parameter_mmax": 3.0,
                            "parameter_mmin": -3.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "Rate",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "shownumber": 0,
                    "slidercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "tribordercolor": [
                        0.313725490196078,
                        0.313725490196078,
                        0.313725490196078,
                        0.0
                    ],
                    "tricolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "trioncolor": [
                        0.427,
                        0.843,
                        1.0,
                        1.0
                    ],
                    "varname": "rate"
                }
            },
            {
                "box": {
                    "fontsize": 10.066666666666666,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        922.0,
                        369.0,
                        150.0,
                        19.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        63.0,
                        304.0,
                        70.0,
                        19.0
                    ],
                    "text": "Grain Period"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        887.0,
                        475.0,
                        40.0,
                        20.0
                    ],
                    "text": "set $1"
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
                        887.0,
                        449.0,
                        93.0,
                        20.0
                    ],
                    "text": "expr 1/$f1*1000"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-40",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        882.0,
                        369.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        306.0,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 8.0,
                            "parameter_initial": [
                                77.15141533264784
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "grainPeriod",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 2.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "grainPeriod",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "grainPeriod"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        882.0,
                        399.0,
                        101.0,
                        20.0
                    ],
                    "text": "expr 1/($f1/1000)"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1145.0,
                        420.0,
                        150.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        259.0,
                        302.0,
                        75.25,
                        18.0
                    ],
                    "text": "Grain Length"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-36",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1085.0,
                        420.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        206.25,
                        304.0,
                        44.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                355.2598425196853
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "grainLength",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "grainLength",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "grainLength"
                }
            },
            {
                "box": {
                    "fontsize": 10.066666666666666,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1040.0,
                        390.0,
                        150.0,
                        19.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        63.0,
                        330.5775,
                        91.0,
                        19.0
                    ],
                    "text": "Grain Frequency"
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "id": "obj-33",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        991.0,
                        422.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.25,
                        332.5775,
                        45.0,
                        15.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.0,
                            "parameter_initial": [
                                12.961525017893404
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_linknames": 1,
                            "parameter_longname": "grainFreq",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "grainFreq",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "grainFreq"
                }
            },
            {
                "box": {
                    "args": [
                        "bufName",
                        "cp.grainflow.app"
                    ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hint": "",
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "cp.grainFlow.bufferView.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [
                        0.0,
                        0.0
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
                            1678.0,
                            229.0,
                            1270.0,
                            984.0
                        ],
                        "openinpresentation": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "buffername": "cp.grainflow.app",
                                    "dotColor": [
                                        0.5,
                                        0.743,
                                        0.9,
                                        0.95
                                    ],
                                    "dotColorSecondary": [
                                        1.0,
                                        0.796078431372549,
                                        0.796078431372549,
                                        0.901960784313726
                                    ],
                                    "dotScale": 5.0,
                                    "id": "obj-4",
                                    "maxclass": "grainflow.waveform~",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        250.0,
                                        300.0,
                                        100.0
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        -1.0,
                                        0.0,
                                        894.0,
                                        158.0
                                    ],
                                    "selectColor": [
                                        0.7,
                                        0.943,
                                        1.0,
                                        0.8
                                    ],
                                    "selection": [
                                        0.412751677852349,
                                        0.299657718168302
                                    ],
                                    "waveformColor": [
                                        0.25,
                                        0.25,
                                        0.25,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        491.0,
                                        542.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        459.62962996959686,
                                        660.0,
                                        40.0,
                                        21.0
                                    ],
                                    "text": "unjoin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1081.0,
                                        57.0,
                                        170.0,
                                        57.0
                                    ],
                                    "text": "selectColor 0.7 0.943 1. 0.8, waveformColor 0.25 0.25 0.25 1, dotColor 0.5 0.743 0.9 0.95, mode 1"
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
                                        509.37962996959686,
                                        39.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        383.79628854990005,
                                        578.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        374.4398097395897,
                                        605.9629445075989,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        374.4398097395897,
                                        523.6296286582947,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        136.53240782022476,
                                        455.55554062128067,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        524.4444272518158,
                                        577.7777588367462,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "> 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        245.03240782022476,
                                        528.407409131527,
                                        37.0,
                                        21.0
                                    ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        136.53240782022476,
                                        494.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        530.888885974884,
                                        672.6666671037674,
                                        76.0,
                                        21.0
                                    ],
                                    "text": "route clicking"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        521.6296299695969,
                                        756.0,
                                        168.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.clickMessage"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1024.0,
                                        494.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        521.6296299695969,
                                        500.40740913152695,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        521.6296299695969,
                                        547.407409131527,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "+"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        504.37962996959686,
                                        473.40740913152695,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.shiftDown"
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
                                        161.125,
                                        406.0,
                                        83.0,
                                        21.0
                                    ],
                                    "text": "route selection"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        140.0,
                                        783.6666671037674,
                                        149.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.selRange"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        577.0,
                                        81.0,
                                        111.0,
                                        21.0
                                    ],
                                    "text": "buf cp.grainflow.app"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        459.62962996959686,
                                        402.40740913152695,
                                        172.25,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.clickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        535.013885974884,
                                        634.6666671037674,
                                        31.0,
                                        21.0
                                    ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        966.0,
                                        519.0,
                                        115.0,
                                        21.0
                                    ],
                                    "text": "s grainflow.app.toGui"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        966.0,
                                        494.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        973.0,
                                        462.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        -5.875,
                                        57.0,
                                        114.0,
                                        21.0
                                    ],
                                    "text": "r grainflow.app.toGui"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        686.5,
                                        779.0,
                                        115.0,
                                        21.0
                                    ],
                                    "text": "s grainflow.app.toGui"
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
                                        577.0,
                                        39.0,
                                        168.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.loadedSound"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        748.0,
                                        587.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-280",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        23.0,
                                        148.0,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.grainInfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1049.0,
                                        568.0,
                                        54.0,
                                        21.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1045.0,
                                        593.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        960.0,
                                        660.0,
                                        153.0,
                                        21.0
                                    ],
                                    "text": "s cp.grainflow.app.shiftDown"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        759.5,
                                        515.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 1 1"
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
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        808.0,
                                        600.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "change"
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
                                        808.5,
                                        737.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 0"
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
                                        820.0,
                                        698.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        808.0,
                                        660.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        912.0,
                                        453.0,
                                        29.5,
                                        21.0
                                    ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        930.75,
                                        406.0,
                                        172.25,
                                        21.0
                                    ],
                                    "text": "r cp.grainflow.app.clickMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        698.5,
                                        509.0,
                                        50.0,
                                        21.0
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        698.5,
                                        540.0,
                                        45.0,
                                        21.0
                                    ],
                                    "text": "change"
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
                                        698.5,
                                        689.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        710.5,
                                        638.0,
                                        46.0,
                                        21.0
                                    ],
                                    "text": "mode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        698.5,
                                        600.0,
                                        42.0,
                                        21.0
                                    ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        698.5,
                                        421.0,
                                        114.0,
                                        21.0
                                    ],
                                    "text": "qmetro 10 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        698.5,
                                        449.0,
                                        61.0,
                                        21.0
                                    ],
                                    "text": "modifiers"
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
                                        "obj-43",
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
                                        "obj-4",
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
                                        "obj-26",
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
                                        "obj-58",
                                        0
                                    ],
                                    "source": [
                                        "obj-21",
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
                                        "obj-22",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-82",
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
                                        "obj-83",
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
                                        "obj-27",
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
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-280",
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
                                        "obj-29",
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
                                        "obj-30",
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
                                        "obj-32",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-76",
                                        1
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
                                        "obj-22",
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
                                        "obj-36",
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
                                        "obj-39",
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
                                        "obj-4",
                                        1
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
                                        "obj-4",
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
                                        "obj-45",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-52",
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
                                        "obj-81",
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
                                        "obj-39",
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
                                        "obj-71",
                                        1
                                    ],
                                    "source": [
                                        "obj-50",
                                        2
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
                                        "obj-51",
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
                                        "obj-52",
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
                                        "obj-52",
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
                                        "obj-55",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-62",
                                        0
                                    ],
                                    "source": [
                                        "obj-56",
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
                                        "obj-56",
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
                                        "obj-58",
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
                                        "obj-6",
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
                                        "obj-62",
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
                                        "obj-63",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-40",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-64",
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
                                    "order": 1,
                                    "source": [
                                        "obj-64",
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
                                        "obj-70",
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
                                    "order": 0,
                                    "source": [
                                        "obj-70",
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
                                        "obj-71",
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
                                    "order": 0,
                                    "source": [
                                        "obj-73",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-74",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-73",
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
                                    "order": 0,
                                    "source": [
                                        "obj-74",
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
                                    "order": 1,
                                    "source": [
                                        "obj-74",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-77",
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
                                        "obj-95",
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
                                        "obj-95",
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
                                        "obj-24",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-81",
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
                                    "order": 0,
                                    "source": [
                                        "obj-81",
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
                                        "obj-82",
                                        0
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
                                        "obj-83",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-85",
                                        0
                                    ],
                                    "source": [
                                        "obj-83",
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
                                        "obj-85",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-85",
                                        0
                                    ],
                                    "source": [
                                        "obj-86",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-206"
                    },
                    "patching_rect": [
                        353.0,
                        421.0,
                        180.5,
                        170.5
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.0,
                        74.0,
                        894.5,
                        160.0
                    ],
                    "viewvisibility": 1
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
                        544.0,
                        471.0,
                        61.0,
                        20.0
                    ],
                    "text": "replace $1"
                }
            },
            {
                "box": {
                    "decodemode": 0,
                    "id": "obj-3",
                    "legend": "Drop Sound File",
                    "maxclass": "live.drop",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        544.0,
                        397.0,
                        140.0,
                        60.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.0,
                        236.0,
                        138.0,
                        45.0
                    ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        },
                        "valueof": {
                            "parameter_initial": [
                                "FemVoice.aif"
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "read",
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "live.drop",
                            "parameter_type": 4
                        }
                    },
                    "textcolor": [
                        0.079348079365577,
                        0.07934804057877,
                        0.079348050547289,
                        1.0
                    ],
                    "varname": "soundfile"
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
                        544.0,
                        520.0,
                        162.0,
                        20.0
                    ],
                    "text": "buffer~ cp.grainflow.app 1000"
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
                    "id": "obj-283",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        806.0,
                        98.0,
                        581.25,
                        685.9529984593391
                    ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-124",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        34.0,
                        397.0,
                        250.0,
                        180.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.25,
                        508.0,
                        492.75,
                        82.5
                    ],
                    "rounded": 0
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-156",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        341.0,
                        102.0,
                        389.0,
                        262.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        209.25,
                        236.0,
                        379.75,
                        63.0
                    ]
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
                    "id": "obj-279",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        335.0,
                        384.0,
                        395.0,
                        603.0
                    ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0,
                        0,
                        0,
                        0
                    ],
                    "id": "obj-14",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1953.0,
                        263.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        236.25,
                        416.4366666666667,
                        576.0,
                        79.0
                    ],
                    "proportion": 0.39,
                    "rounded": 0
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
                    "id": "obj-286",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        64.0,
                        820.5,
                        604.25
                    ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        720.0,
                        407.0,
                        50.5,
                        20.0
                    ],
                    "saved_object_attributes": {
                        "mode": 1
                    },
                    "text": "hover"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [
                        0.761,
                        0.761,
                        0.761,
                        1.0
                    ],
                    "border": 2,
                    "bordercolor": [
                        0.525490196078431,
                        0.525490196078431,
                        0.525490196078431,
                        1.0
                    ],
                    "id": "obj-87",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.0,
                        387.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        633.25,
                        364.9366666666667,
                        164.0,
                        33.5
                    ],
                    "proportion": 0.39
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-117",
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
                        "obj-104",
                        0
                    ],
                    "source": [
                        "obj-102",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-102",
                        0
                    ],
                    "source": [
                        "obj-103",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-94",
                        0
                    ],
                    "source": [
                        "obj-109",
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
                        "obj-114",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        0
                    ],
                    "source": [
                        "obj-116",
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
                        "obj-117",
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
                        "obj-117",
                        2
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
                        "obj-117",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-137",
                        0
                    ],
                    "source": [
                        "obj-118",
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
                        "obj-12",
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
                        "obj-120",
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
                    "source": [
                        "obj-122",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-128",
                        0
                    ],
                    "source": [
                        "obj-126",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-122",
                        0
                    ],
                    "source": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-132",
                        0
                    ],
                    "source": [
                        "obj-129",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-245",
                        1
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
                        "obj-116",
                        0
                    ],
                    "source": [
                        "obj-132",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-133",
                        0
                    ],
                    "source": [
                        "obj-134",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-152",
                        0
                    ],
                    "source": [
                        "obj-137",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-142",
                        0
                    ],
                    "source": [
                        "obj-141",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-139",
                        0
                    ],
                    "source": [
                        "obj-142",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-114",
                        0
                    ],
                    "source": [
                        "obj-143",
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
                        "obj-149",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-118",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-152",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-121",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-152",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-202",
                        1
                    ],
                    "midpoints": [
                        2061.5,
                        470.5,
                        1679.2230902777778,
                        470.5
                    ],
                    "source": [
                        "obj-157",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-202",
                        0
                    ],
                    "source": [
                        "obj-157",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-245",
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
                        "obj-157",
                        0
                    ],
                    "source": [
                        "obj-160",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-160",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-161",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-202",
                        3
                    ],
                    "order": 0,
                    "source": [
                        "obj-161",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-267",
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
                        "obj-157",
                        1
                    ],
                    "midpoints": [
                        1637.5,
                        316.5,
                        2061.5,
                        316.5
                    ],
                    "source": [
                        "obj-186",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-157",
                        0
                    ],
                    "source": [
                        "obj-186",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-107",
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
                        "obj-117",
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
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-202",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-204",
                        0
                    ],
                    "source": [
                        "obj-203",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-110",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-134",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-157",
                        0
                    ],
                    "source": [
                        "obj-215",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-157",
                        0
                    ],
                    "source": [
                        "obj-218",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-220",
                        0
                    ],
                    "source": [
                        "obj-219",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-85",
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
                        "obj-215",
                        0
                    ],
                    "source": [
                        "obj-220",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-218",
                        0
                    ],
                    "source": [
                        "obj-220",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-228",
                        0
                    ],
                    "source": [
                        "obj-221",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-224",
                        0
                    ],
                    "source": [
                        "obj-225",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-225",
                        0
                    ],
                    "source": [
                        "obj-228",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-229",
                        0
                    ],
                    "source": [
                        "obj-228",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-224",
                        0
                    ],
                    "source": [
                        "obj-229",
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
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-237",
                        0
                    ],
                    "source": [
                        "obj-232",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-236",
                        0
                    ],
                    "source": [
                        "obj-235",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-202",
                        2
                    ],
                    "source": [
                        "obj-236",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-235",
                        0
                    ],
                    "source": [
                        "obj-237",
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
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-118",
                        0
                    ],
                    "source": [
                        "obj-242",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-287",
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
                        "obj-13",
                        0
                    ],
                    "source": [
                        "obj-259",
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
                        "obj-259",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-123",
                        0
                    ],
                    "source": [
                        "obj-267",
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
                        "obj-267",
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
                        "obj-27",
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
                        "obj-282",
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
                        "obj-285",
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
                        "obj-288",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-287",
                        0
                    ],
                    "source": [
                        "obj-289",
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
                        "obj-3",
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
                        "obj-30",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-242",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-33",
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
                    "order": 1,
                    "source": [
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-157",
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
                        "obj-242",
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
                        "obj-160",
                        0
                    ],
                    "source": [
                        "obj-38",
                        1
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
                        "obj-38",
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
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-117",
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
                        "obj-23",
                        0
                    ],
                    "source": [
                        "obj-42",
                        1
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
                        "obj-42",
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
                    "midpoints": [
                        896.5,
                        507.5,
                        839.5,
                        507.5,
                        839.5,
                        358.0,
                        891.5,
                        358.0
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
                        "obj-42",
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
                        "obj-267",
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
                        "obj-276",
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
                        "obj-2",
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
                        "obj-237",
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
                        "obj-55",
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
                        "obj-55",
                        1
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
                        "obj-66",
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
                        "obj-34",
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
                        "obj-69",
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
                        "obj-64",
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
                        "obj-61",
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
                        "obj-22",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-66",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-275",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-66",
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
                        "obj-67",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-117",
                        2
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
                        "obj-260",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-71",
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
                    "order": 1,
                    "source": [
                        "obj-71",
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
                        "obj-76",
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
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-113",
                        0
                    ],
                    "source": [
                        "obj-94",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-108",
                        0
                    ],
                    "source": [
                        "obj-97",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-149",
                        0
                    ],
                    "source": [
                        "obj-98",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-149",
                        1
                    ],
                    "source": [
                        "obj-98",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-163",
        "parameters": {
            "obj-103": [
                "GrainDelayRandom",
                "GrainDelayRandom",
                0
            ],
            "obj-109": [
                "grainDirection",
                "grainDirection",
                0
            ],
            "obj-116": [
                "volume",
                "volume",
                0
            ],
            "obj-117::obj-148": [
                "play forward",
                "play forward",
                0
            ],
            "obj-117::obj-150": [
                "play backward",
                "play backward",
                0
            ],
            "obj-117::obj-151": [
                "stop",
                "stop",
                0
            ],
            "obj-117::obj-4": [
                "pingpong",
                "pingpong",
                0
            ],
            "obj-13": [
                "transpose",
                "transpose",
                0
            ],
            "obj-141": [
                "panningSpread",
                "panningSpread",
                0
            ],
            "obj-16": [
                "transposeRandom",
                "transposeRandom",
                0
            ],
            "obj-161": [
                "allOff",
                "allOff",
                0
            ],
            "obj-17": [
                "live.text",
                "live.text",
                0
            ],
            "obj-203": [
                "transpositionMode",
                "transpositionMode",
                0
            ],
            "obj-21": [
                "clickmode",
                "clickmode",
                0
            ],
            "obj-237": [
                "bend",
                "bend",
                0
            ],
            "obj-285::obj-130::obj-3": [
                "live.text[2]",
                "live.text[2]",
                0
            ],
            "obj-285::obj-130::obj-4": [
                "live.text[3]",
                "live.text[2]",
                0
            ],
            "obj-3": [
                "read",
                "live.drop",
                0
            ],
            "obj-33": [
                "grainFreq",
                "grainFreq",
                0
            ],
            "obj-36": [
                "grainLength",
                "grainLength",
                0
            ],
            "obj-40": [
                "grainPeriod",
                "grainPeriod",
                0
            ],
            "obj-48": [
                "live.text[1]",
                "live.text",
                0
            ],
            "obj-49": [
                "freeze",
                "freeze",
                0
            ],
            "obj-63": [
                "grainSizeRandom",
                "grainSizeRandom",
                0
            ],
            "obj-66": [
                "rate",
                "Rate",
                0
            ],
            "obj-67": [
                "volumeRandom",
                "volumeRandom",
                0
            ],
            "obj-71": [
                "output",
                "Output",
                0
            ],
            "obj-97": [
                "panningCenter",
                "panningCenter",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.icon.click.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.freeze.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.pingpong.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.playBackward.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.playForward.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.repeat.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
                "implicit": 1
            },
            {
                "name": "grainflow.icon.stop.svg",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/media",
                "patcherrelativepath": "../../../../media",
                "type": "svg",
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
        "autosave": 0
    }
}