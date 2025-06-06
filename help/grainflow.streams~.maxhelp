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
            100.0,
            588.0,
            848.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        79.0,
                        141.5,
                        17.0,
                        17.0
                    ],
                    "text": "2",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-17",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        79.0,
                        141.5,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        57.0,
                        114.5,
                        17.0,
                        17.0
                    ],
                    "text": "1",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-29",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        57.0,
                        114.5,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
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
                    "buffername": "_help-stream-buf",
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
                    "id": "obj-16",
                    "maxclass": "grainflow.waveform~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        209.0,
                        603.0,
                        320.0,
                        77.0
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
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        179.0,
                        356.0,
                        70.0,
                        23.0
                    ],
                    "text": "deviate 4 8"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        324.0,
                        362.0,
                        90.0,
                        23.0
                    ],
                    "text": "deviate 0.5 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        690.5,
                        50.0,
                        50.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        76.0,
                        113.0,
                        162.0,
                        21.0
                    ],
                    "text": "Turn on the granulator"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        84.0,
                        195.5,
                        62.0,
                        23.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        45.0,
                        191.5,
                        29.0,
                        29.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        100.0,
                        140.0,
                        149.0,
                        21.0
                    ],
                    "text": "Randomize Parameters"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        45.0,
                        135.5,
                        29.0,
                        29.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-7",
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
                        20.0,
                        633.0,
                        141.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
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
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        222.0,
                        521.0,
                        65.0,
                        23.0
                    ],
                    "text": "loadbang"
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
                        222.0,
                        550.0,
                        169.0,
                        23.0
                    ],
                    "text": "buffername _help-stream-buf"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        "list"
                    ],
                    "patching_rect": [
                        20.0,
                        590.0,
                        165.0,
                        23.0
                    ],
                    "text": "grainflow.util.stereoPan~"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-47",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170.0,
                        284.0,
                        299.0,
                        39.0
                    ],
                    "text": "The stream message will address a specific stream and set a grainflow parameter for that stream"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        152.0,
                        233.0,
                        377.0,
                        39.0
                    ],
                    "text": "The deviate message will deviate any grainflow parameter from a center point similar to mc deviate"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.27843137254902,
                        0.098039215686275,
                        1.0
                    ],
                    "id": "obj-45",
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
                            134.0,
                            172.0,
                            534.0,
                            372.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        47.0,
                                        18.0,
                                        231.0,
                                        30.0
                                    ],
                                    "text": "Stream messages need to be in the format \n( stream {index} {param} {value} )"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        79.0,
                                        168.0,
                                        38.0,
                                        22.0
                                    ],
                                    "text": "+ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        74.0,
                                        39.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        196.0,
                                        38.0,
                                        22.0
                                    ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        79.0,
                                        142.0,
                                        113.0,
                                        36.0
                                    ],
                                    "text": "scale 0. 999. -12 12"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        79.0,
                                        113.0,
                                        81.0,
                                        22.0
                                    ],
                                    "text": "random 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        136.0,
                                        37.0,
                                        22.0
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        109.0,
                                        63.0,
                                        22.0
                                    ],
                                    "text": "random 5"
                                }
                            },
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
                                        10.0,
                                        237.0,
                                        143.0,
                                        22.0
                                    ],
                                    "text": "stream $1 transpose $2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-43",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        14.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        10.0,
                                        278.0,
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
                                        "obj-44",
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
                                        "obj-37",
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
                                        "obj-40",
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
                                        "obj-39",
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
                                        "obj-42",
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
                                        "obj-34",
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
                                        "obj-36",
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
                                        "obj-38",
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
                                        "obj-40",
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
                                        "obj-41",
                                        0
                                    ],
                                    "source": [
                                        "obj-43",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-472"
                    },
                    "patching_rect": [
                        62.0,
                        293.0,
                        106.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p streamMessage"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.0,
                        0.27843137254902,
                        0.098039215686275,
                        1.0
                    ],
                    "id": "obj-32",
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
                            268.0,
                            207.0,
                            454.0,
                            332.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        20.0,
                                        345.0,
                                        18.0
                                    ],
                                    "text": "Deviate messages need to be in the format ( deviate {param} deviation base )"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        193.0,
                                        209.0,
                                        137.0,
                                        20.0
                                    ],
                                    "text": "deviate delayRandom 50 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        147.0,
                                        184.0,
                                        99.0,
                                        20.0
                                    ],
                                    "text": "deviate direction 1 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-29",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        100.0,
                                        153.0,
                                        111.0,
                                        20.0
                                    ],
                                    "text": "deviate space 0.1 0.5"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-28",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        53.0,
                                        122.0,
                                        107.0,
                                        20.0
                                    ],
                                    "text": "deviate delay 0 5000"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato Medium",
                                    "id": "obj-26",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        89.0,
                                        101.0,
                                        20.0
                                    ],
                                    "text": "deviate amp 0.25 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        10.0,
                                        14.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        10.0,
                                        265.0,
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
                                        "obj-31",
                                        0
                                    ],
                                    "midpoints": [
                                        156.5,
                                        234.5,
                                        19.5,
                                        234.5
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
                                        "obj-31",
                                        0
                                    ],
                                    "midpoints": [
                                        19.5,
                                        187.0,
                                        19.5,
                                        187.0
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
                                        "obj-31",
                                        0
                                    ],
                                    "midpoints": [
                                        62.5,
                                        203.5,
                                        19.5,
                                        203.5
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
                                        "obj-31",
                                        0
                                    ],
                                    "midpoints": [
                                        109.5,
                                        219.0,
                                        19.5,
                                        219.0
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
                                        "obj-31",
                                        0
                                    ],
                                    "midpoints": [
                                        202.5,
                                        247.0,
                                        19.5,
                                        247.0
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
                                    "midpoints": [
                                        19.5,
                                        60.0,
                                        156.5,
                                        60.0
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
                                        "obj-26",
                                        0
                                    ],
                                    "midpoints": [
                                        19.5,
                                        68.5,
                                        19.5,
                                        68.5
                                    ],
                                    "order": 4,
                                    "source": [
                                        "obj-30",
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
                                    "midpoints": [
                                        19.5,
                                        85.0,
                                        62.5,
                                        85.0
                                    ],
                                    "order": 3,
                                    "source": [
                                        "obj-30",
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
                                    "midpoints": [
                                        19.5,
                                        72.5,
                                        109.5,
                                        72.5
                                    ],
                                    "order": 2,
                                    "source": [
                                        "obj-30",
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
                                    "midpoints": [
                                        19.5,
                                        53.5,
                                        202.5,
                                        53.5
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-30",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-474",
                        "editing_bgcolor": [
                            0.956862745098039,
                            0.956862745098039,
                            0.956862745098039,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        45.0,
                        241.0,
                        105.0,
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
                    "text": "p deviateMessage"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        45.0,
                        169.5,
                        70.0,
                        23.0
                    ],
                    "text": "metro 125"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        324.0,
                        394.0,
                        118.0,
                        23.0
                    ],
                    "text": "mc.sig~ 1 @chans 5"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        179.0,
                        394.0,
                        138.0,
                        23.0
                    ],
                    "text": "mc.phasor~ 8 @chans 5"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        20.0,
                        108.5,
                        29.0,
                        29.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        31.0,
                        521.0,
                        130.0,
                        64.0
                    ],
                    "text": "Channels are interleaved by stream, so 1,2,3,4,5,1,2,3,4,5 ect."
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        255.0,
                        465.0,
                        260.0,
                        21.0
                    ],
                    "text": "arguments: streams grains_per_stream buffer"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        47.0,
                        557.0,
                        64.0
                    ],
                    "text": "grainflow.streams~ allows you to control groups of grains using a single grainflow instance. Streams will create a grainflow object with the needed number of grains and allow communication wtih each stream using the stream message. Deviation and spread messages allow you to set all of the streams programatically."
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        4.0,
                        437.0,
                        42.0
                    ],
                    "text": "grainflow.streams~"
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
                        313.0,
                        525.0,
                        197.0,
                        23.0
                    ],
                    "text": "buffer~ _help-stream-buf anton.aif"
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
                        20.0,
                        465.0,
                        229.0,
                        23.0
                    ],
                    "text": "grainflow.streams~ 5 5 _help-stream-buf"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "destination": [
                        "obj-16",
                        0
                    ],
                    "midpoints": [
                        55.75,
                        499.0,
                        218.5,
                        499.0
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
                        1
                    ],
                    "midpoints": [
                        82.0,
                        510.75,
                        175.5,
                        510.75
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
                    "color": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "destination": [
                        "obj-1",
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        188.5,
                        440.0,
                        29.5,
                        440.0
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
                        "obj-1",
                        1
                    ],
                    "midpoints": [
                        333.5,
                        455.75,
                        99.5,
                        455.75
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
                        "obj-32",
                        0
                    ],
                    "order": 3,
                    "source": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "destination": [
                        "obj-35",
                        0
                    ],
                    "midpoints": [
                        54.5,
                        232.5,
                        333.5,
                        232.5
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
                    "color": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "midpoints": [
                        54.5,
                        233.5,
                        188.5,
                        233.5
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
                        "obj-45",
                        0
                    ],
                    "midpoints": [
                        54.5,
                        231.0,
                        71.5,
                        231.0
                    ],
                    "order": 2,
                    "source": [
                        "obj-21",
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
                    "midpoints": [
                        93.5,
                        228.0,
                        79.5,
                        228.0,
                        79.5,
                        193.0,
                        54.5,
                        193.0
                    ],
                    "source": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.985541582107544,
                        0.009453177452087,
                        0.999180555343628,
                        1.0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        54.5,
                        411.75,
                        29.5,
                        411.75
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
                        "obj-13",
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
                    "color": [
                        0.985541582107544,
                        0.009453177452087,
                        0.999180555343628,
                        1.0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        71.5,
                        429.25,
                        29.5,
                        429.25
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
                        "obj-7",
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
                        "obj-15",
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
                        "obj-16",
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
                        "obj-8",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-470",
        "parameters": {
            "obj-7": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.streams~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers",
                "patcherrelativepath": "../patchers",
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
        "boxgroups": [
            {
                "boxes": [
                    "obj-17",
                    "obj-3"
                ]
            },
            {
                "boxes": [
                    "obj-29",
                    "obj-19"
                ]
            }
        ]
    }
}