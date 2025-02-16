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
            50.0,
            100.0,
            601.0,
            460.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        6.0,
                        45.0,
                        224.0,
                        19.0
                    ],
                    "text": "This is used to generate 2D envelopes "
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        6.0,
                        3.0,
                        314.0,
                        34.0
                    ],
                    "text": "Grainflow.gen.env2D"
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
                        78.0,
                        192.5,
                        154.0,
                        35.0
                    ],
                    "text": "All buffers must  be the same size!"
                }
            },
            {
                "box": {
                    "id": "obj-27",
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
                                    "id": "obj-26",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "clear"
                                    ],
                                    "patching_rect": [
                                        306.0,
                                        117.0,
                                        47.0,
                                        36.0
                                    ],
                                    "text": "t b clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        293.0,
                                        64.0,
                                        53.0,
                                        36.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        318.0,
                                        220.0,
                                        88.0,
                                        36.0
                                    ],
                                    "text": "prepend append"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        281.0,
                                        167.0,
                                        299.0,
                                        36.0
                                    ],
                                    "text": "grainflow.Blackman, grainflow.FatPluck, grainflow.Hamming"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        318.0,
                                        283.0,
                                        118.0,
                                        36.0
                                    ],
                                    "saved_object_attributes": {
                                        "embed": 0
                                    },
                                    "text": "polybuffer~ envelopes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        103.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        122.5,
                                        234.0,
                                        123.0,
                                        22.0
                                    ],
                                    "text": "fill 1., apply blackman"
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
                                        133.0,
                                        315.0,
                                        131.0,
                                        22.0
                                    ],
                                    "text": "fill 1., apply triangle 0.5"
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
                                        59.0,
                                        150.0,
                                        115.0,
                                        22.0
                                    ],
                                    "text": "fill 1., apply hanning"
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
                                        114.0,
                                        351.0,
                                        156.0,
                                        22.0
                                    ],
                                    "text": "buffer~ env3 @samps 2048"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        133.0,
                                        273.0,
                                        156.0,
                                        22.0
                                    ],
                                    "text": "buffer~ env2 @samps 2048"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        59.0,
                                        181.0,
                                        156.0,
                                        22.0
                                    ],
                                    "text": "buffer~ env1 @samps 2048"
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
                                        "obj-11",
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
                                        "obj-8",
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
                                        "obj-9",
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
                                        "obj-21",
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
                                        "obj-7",
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
                                        "obj-26",
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
                                        "obj-19",
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
                                        "obj-26",
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
                            }
                        ],
                        "originid": "pat-380"
                    },
                    "patching_rect": [
                        454.0,
                        283.0,
                        60.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p buffers"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        145.0,
                        159.0,
                        160.0,
                        25.0
                    ],
                    "text": "Or a polybuffer"
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
                        49.0,
                        159.0,
                        101.0,
                        23.0
                    ],
                    "text": "env2d envelopes"
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
                        454.0,
                        317.5,
                        40.0,
                        23.0
                    ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        142.0,
                        124.0,
                        315.0,
                        25.0
                    ],
                    "text": "Contails a target buffer follows by a list of buffers"
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
                        11.0,
                        244.0,
                        151.0,
                        23.0
                    ],
                    "text": "grainflow.util.genEnv2D"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        37.0,
                        80.0,
                        150.0,
                        23.0
                    ],
                    "text": "Generate the 2D buffer"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        11.0,
                        80.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "buffername": "env2d",
                    "id": "obj-16",
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
                    "patching_rect": [
                        11.0,
                        279.0,
                        426.0,
                        113.0
                    ],
                    "selectioncolor": [
                        0.0,
                        0.0,
                        0.0,
                        0.0
                    ],
                    "voffset": 1.0,
                    "vzoom": 0.5
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
                        11.0,
                        124.0,
                        139.0,
                        23.0
                    ],
                    "text": "env2d env1 env2 env1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        454.0,
                        344.5,
                        90.0,
                        23.0
                    ],
                    "text": "buffer~ env2d"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-22",
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
                        "obj-14",
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
                        "obj-22",
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
                        "obj-12",
                        0
                    ],
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-378",
        "dependency_cache": [
            {
                "name": "_grainflowutil.js",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/javascript",
                "patcherrelativepath": "../javascript",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "grainflow.util.genEnv2D.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}