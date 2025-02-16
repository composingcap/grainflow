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
            160.0,
            172.0,
            770.0,
            698.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        280.0,
                        303.0,
                        57.0,
                        23.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        210.0,
                        334.0,
                        40.0,
                        23.0
                    ],
                    "text": "- 0.01"
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
                        210.0,
                        311.0,
                        29.5,
                        23.0
                    ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        210.0,
                        247.5,
                        24.0,
                        24.0
                    ]
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
                        280.0,
                        334.0,
                        74.0,
                        23.0
                    ],
                    "text": "spread 1 1.2"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        46.5,
                        237.0,
                        90.0,
                        23.0
                    ],
                    "text": "delayRandom 0"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        66.0,
                        294.0,
                        17.0,
                        17.0
                    ],
                    "text": "4",
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
                    "id": "obj-39",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        66.0,
                        294.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        85.0,
                        293.0,
                        87.0,
                        50.0
                    ],
                    "presentation_linecount": 2,
                    "text": "Random delay can help hide artifacts"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        32.0,
                        268.0,
                        97.0,
                        23.0
                    ],
                    "text": "delayRandom 25"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        221.0,
                        415.0,
                        141.0,
                        59.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        245.0,
                        251.0,
                        17.0,
                        17.0
                    ],
                    "text": "3",
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
                    "id": "obj-30",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        245.0,
                        251.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
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
                        264.0,
                        250.0,
                        79.0,
                        35.0
                    ],
                    "text": "Reset positions"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        397.0,
                        128.0,
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
                    "id": "obj-24",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        397.0,
                        128.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        416.0,
                        127.0,
                        150.0,
                        21.0
                    ],
                    "text": "Play audio"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        47.0,
                        105.0,
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
                        47.0,
                        105.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        66.0,
                        104.0,
                        150.0,
                        35.0
                    ],
                    "presentation_linecount": 2,
                    "text": "Enable the granulator and recorder"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        9.0,
                        50.0,
                        401.0,
                        34.0
                    ],
                    "text": "By controling the rate of the traversal phasor, you can perform realtime timestretching with grainflow"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        9.0,
                        7.0,
                        360.0,
                        41.0
                    ],
                    "presentation_linecount": 3,
                    "text": "Realtime Timestretch"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        611.0,
                        49.0,
                        49.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
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
                        554.0,
                        140.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
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
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        433.0,
                        229.0,
                        85.0,
                        22.0
                    ],
                    "text": "snapshot~ 33"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        181.0,
                        373.0,
                        118.0,
                        23.0
                    ],
                    "text": "mc.rate~ 1 @chans 8"
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
                    "buffername": "_gf_timestretch",
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
                    "id": "obj-17",
                    "maxclass": "grainflow.waveform~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        387.0,
                        334.0,
                        343.0,
                        85.0
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
                    ],
                    "waveformColor": [
                        0.0,
                        0.0,
                        0.0,
                        0.95
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
                        "signal"
                    ],
                    "patching_rect": [
                        32.0,
                        388.0,
                        77.0,
                        23.0
                    ],
                    "text": "phasor~ 16"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        13.0,
                        515.0,
                        97.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        13.0,
                        107.0,
                        28.0,
                        28.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "jongly.aif",
                                "filename": "jongly.aif",
                                "filekind": "audiofile",
                                "id": "u935006631",
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
                    "id": "obj-5",
                    "maxclass": "mc.playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "originallength": [
                        0.0,
                        "ticks"
                    ],
                    "originaltempo": 120.0,
                    "outlettype": [
                        "multichannelsignal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        240.0,
                        123.0,
                        154.0,
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
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        408.0,
                        179.0,
                        229.0,
                        23.0
                    ],
                    "text": "buffer~ _gf_timestretch 0 2 @size 20000"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "list"
                    ],
                    "patching_rect": [
                        181.0,
                        183.0,
                        208.0,
                        22.0
                    ],
                    "text": "grainflow.util.record~ _gf_timestretch"
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
                        13.0,
                        472.0,
                        167.0,
                        23.0
                    ],
                    "text": "grainflow~ _gf_timestretch 16"
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
                        460.0,
                        268.5,
                        125.0,
                        22.0
                    ],
                    "text": "recordHead $1, bang"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "midpoints": [
                        41.0,
                        503.6101882457733,
                        379.25,
                        503.6101882457733,
                        379.25,
                        308.6101882457733,
                        396.5,
                        308.6101882457733
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
                    "midpoints": [
                        41.5,
                        462.6101882457733,
                        22.5,
                        462.6101882457733
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
                        "obj-1",
                        1
                    ],
                    "midpoints": [
                        190.5,
                        460.1101882457733,
                        71.83333333333334,
                        460.1101882457733
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
                        "obj-32",
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
                        "obj-17",
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
                        "obj-18",
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
                        "obj-20",
                        0
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
                        "obj-19",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-20",
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
                    "midpoints": [
                        442.5,
                        299.25,
                        230.0,
                        299.25
                    ],
                    "order": 1,
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
                        0
                    ],
                    "midpoints": [
                        41.5,
                        343.0,
                        22.5,
                        343.0
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        56.0,
                        340.0,
                        22.5,
                        340.0
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
                        1
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
                        "obj-48",
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
                    "midpoints": [
                        249.5,
                        168.0,
                        190.5,
                        168.0
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
                        "obj-18",
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
                        "obj-43",
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
                        "obj-1",
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
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        22.5,
                        159.11018824577332,
                        190.5,
                        159.11018824577332
                    ],
                    "order": 0,
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-6",
        "parameters": {
            "obj-15": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.util.record~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow.waveform~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow~.mxe64",
                "type": "mx64"
            },
            {
                "name": "jongly.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [
                    "obj-59",
                    "obj-29",
                    "obj-35"
                ]
            },
            {
                "boxes": [
                    "obj-25",
                    "obj-24",
                    "obj-22"
                ]
            },
            {
                "boxes": [
                    "obj-40",
                    "obj-39",
                    "obj-38"
                ]
            },
            {
                "boxes": [
                    "obj-31",
                    "obj-30",
                    "obj-28"
                ]
            }
        ]
    }
}