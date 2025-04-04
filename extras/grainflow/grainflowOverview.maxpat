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
            183.0,
            112.0,
            682.0,
            564.0
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
                    "id": "obj-1",
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
                            0.0,
                            26.0,
                            682.0,
                            538.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        560.1988525390625,
                                        255.0,
                                        18.0
                                    ],
                                    "text": "Access speaker presets"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-23",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        557.1988525390625,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.speakers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        617.412109375,
                                        257.0,
                                        30.0
                                    ],
                                    "text": "Format spatalization for other systems like spat gris or the IEM plugin suite"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        588.412109375,
                                        255.0,
                                        18.0
                                    ],
                                    "text": "Split spatialization messages based on grain ID"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        530.1988525390625,
                                        195.0,
                                        18.0
                                    ],
                                    "text": "View grain spatialization"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        206.0,
                                        464.55908203125,
                                        262.0,
                                        18.0
                                    ],
                                    "text": "Add drag to your physics system"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        206.0,
                                        437.55908203125,
                                        262.0,
                                        18.0
                                    ],
                                    "text": "Transform your physics forces"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        206.0,
                                        407.3458251953125,
                                        262.0,
                                        18.0
                                    ],
                                    "text": "Add magnets that apply force based on distance"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        374.132568359375,
                                        195.0,
                                        18.0
                                    ],
                                    "text": "Add a force yout physics system"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-32",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        585.412109375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.split"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        346.9193115234375,
                                        195.0,
                                        18.0
                                    ],
                                    "text": "Apply basic physics to your grains"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        242.0,
                                        288.4927978515625,
                                        307.0,
                                        18.0
                                    ],
                                    "text": "Transform grain positions over their lifespan"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        261.279541015625,
                                        307.0,
                                        18.0
                                    ],
                                    "text": "Transform grain positions via translation, rotation, or scale"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        201.6397705078125,
                                        307.0,
                                        18.0
                                    ],
                                    "text": "Sets grain positions based on a sampled volume"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        171.6397705078125,
                                        307.0,
                                        18.0
                                    ],
                                    "text": "Sets grain positions based on audio for an X, Y, and Z axis"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        138.2132568359375,
                                        307.0,
                                        18.0
                                    ],
                                    "text": "Sets grain positions based on a center point"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        1.0,
                                        0.243137254901961,
                                        0.976470588235294,
                                        0.0
                                    ],
                                    "fontsize": 14.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        18.0,
                                        494.985595703125,
                                        207.0,
                                        23.0
                                    ],
                                    "text": "Utilities"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        18.0,
                                        55.0,
                                        473.0,
                                        18.0
                                    ],
                                    "text": "Grainflow.spat is set up to allow you to spatialize grains like a particle system."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        1.0,
                                        0.243137254901961,
                                        0.976470588235294,
                                        0.0
                                    ],
                                    "fontsize": 14.0,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        18.0,
                                        229.0662841796875,
                                        207.0,
                                        23.0
                                    ],
                                    "text": "Transform Grain Positions"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-16",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        135.2132568359375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.3dspread"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        1.0,
                                        0.243137254901961,
                                        0.976470588235294,
                                        0.0
                                    ],
                                    "fontsize": 14.0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        18.0,
                                        314.7060546875,
                                        207.0,
                                        23.0
                                    ],
                                    "text": "Apply Physics"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        1.0,
                                        0.243137254901961,
                                        0.976470588235294,
                                        0.0
                                    ],
                                    "fontsize": 14.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        18.0,
                                        109.2132568359375,
                                        207.0,
                                        23.0
                                    ],
                                    "text": "Set Grain Positions Position"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        188.0,
                                        82.0,
                                        271.0,
                                        18.0
                                    ],
                                    "text": "A multchannel panner for spatializing grains"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        464.7723388671875,
                                        183.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.phys.drag"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-14",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        434.55908203125,
                                        183.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.phys.transform"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-13",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        404.3458251953125,
                                        183.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.phys.magnets"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-12",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        374.132568359375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.phys.add"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-11",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        617.412109375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.format"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-10",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        524.1988525390625,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spatview~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-7",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        168.6397705078125,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.spirograph"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-5",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        288.4927978515625,
                                        222.0,
                                        21.0
                                    ],
                                    "text": "grainflow.spat.transformOverLife"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-3",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        258.279541015625,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.transform"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-2",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        343.9193115234375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.phys"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-1",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        198.6397705078125,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.volume"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        18.0,
                                        79.0,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.spat.pan~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        43.0,
                                        653.412109375,
                                        74.0,
                                        20.0
                                    ],
                                    "text": "prepend help"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        43.0,
                                        680.412109375,
                                        49.0,
                                        20.0
                                    ],
                                    "text": "pcontrol"
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
                                        18.0,
                                        8.412109375,
                                        265.0,
                                        42.0
                                    ],
                                    "text": "Grainflow.Spat"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-6",
                                        0
                                    ],
                                    "hidden": 1,
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-10",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-11",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-12",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-13",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-14",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-15",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-16",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-2",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-23",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-3",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-32",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-5",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-6",
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
                                    "hidden": 1,
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-9",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-114"
                    },
                    "patching_rect": [
                        148.0,
                        152.37037037037032,
                        47.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Spat"
                }
            },
            {
                "box": {
                    "id": "obj-54",
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
                            0.0,
                            26.0,
                            682.0,
                            538.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "button": 1,
                                    "id": "obj-4",
                                    "maxclass": "tab",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        10.0,
                                        52.0,
                                        270.0,
                                        262.5
                                    ],
                                    "tabs": [
                                        "01_Grainflow_Basics.maxpat",
                                        "02_Live_Input.maxpat",
                                        "03_Grain_Spatialization.maxpat",
                                        "04_Granular_Synthesis.maxpat",
                                        "05_Parameter_Buffers.maxpat",
                                        "06_Dynamic_Bussing.maxpat",
                                        "07_Grainflow_With_Snowphasor.maxpat"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-73",
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
                                            930.0,
                                            249.0,
                                            458.0,
                                            699.0
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
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        293.0,
                                                        450.0,
                                                        85.0,
                                                        22.0
                                                    ],
                                                    "text": "expr $f1*150/4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        264.0,
                                                        405.0,
                                                        33.0,
                                                        22.0
                                                    ],
                                                    "text": "zl.len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        233.0,
                                                        484.0,
                                                        138.0,
                                                        35.0
                                                    ],
                                                    "text": "patching_rect 10. 52. 270. $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        117.0,
                                                        229.0,
                                                        29.5,
                                                        22.0
                                                    ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        125.0,
                                                        474.0,
                                                        75.0,
                                                        22.0
                                                    ],
                                                    "text": "prepend tabs"
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
                                                        125.0,
                                                        445.0,
                                                        47.0,
                                                        22.0
                                                    ],
                                                    "text": "zl group"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        109.0,
                                                        364.0,
                                                        73.0,
                                                        22.0
                                                    ],
                                                    "text": "route append"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        276.0,
                                                        131.0,
                                                        29.5,
                                                        22.0
                                                    ],
                                                    "text": "t b s"
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
                                                        276.0,
                                                        181.72222222222226,
                                                        34.0,
                                                        22.0
                                                    ],
                                                    "text": "zl.reg"
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
                                                        281.5,
                                                        250.72222222222226,
                                                        53.0,
                                                        22.0
                                                    ],
                                                    "text": "tosymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        276.0,
                                                        213.72222222222226,
                                                        70.0,
                                                        22.0
                                                    ],
                                                    "text": "sprintf %s%s"
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
                                                        281.5,
                                                        281.7222222222223,
                                                        78.0,
                                                        22.0
                                                    ],
                                                    "text": "loadunique $1"
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
                                                        281.5,
                                                        334.7222222222223,
                                                        49.0,
                                                        22.0
                                                    ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        276.0,
                                                        100.0,
                                                        30.0,
                                                        30.0
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        70.0,
                                                        100.0,
                                                        53.0,
                                                        22.0
                                                    ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-69",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        109.0,
                                                        282.7222222222223,
                                                        53.0,
                                                        22.0
                                                    ],
                                                    "text": "tosymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        109.0,
                                                        326.7222222222223,
                                                        37.0,
                                                        22.0
                                                    ],
                                                    "text": "folder"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        108.0,
                                                        256.7222222222223,
                                                        102.0,
                                                        22.0
                                                    ],
                                                    "text": "sprintf %stutorials/"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        140.72222222222226,
                                                        30.0,
                                                        22.0
                                                    ],
                                                    "text": "path"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60.0,
                                                        181.72222222222226,
                                                        63.0,
                                                        22.0
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
                                                    "id": "obj-72",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        24.0,
                                                        499.7222222222223,
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
                                                        "obj-10",
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
                                                        "obj-11",
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
                                                        "obj-11",
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
                                                        "obj-12",
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
                                                        "obj-13",
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
                                                    "source": [
                                                        "obj-5",
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
                                                        "obj-56",
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
                                                        "obj-59",
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
                                                        "obj-69",
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
                                                        "obj-3",
                                                        0
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
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "obj-69",
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
                                                    "order": 0,
                                                    "source": [
                                                        "obj-69",
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
                                                        "obj-7",
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
                                                        "obj-71",
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
                                                        "obj-8",
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
                                                    "source": [
                                                        "obj-9",
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
                                                        "obj-9",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-118"
                                    },
                                    "patching_rect": [
                                        125.0,
                                        15.5,
                                        59.0,
                                        20.0
                                    ],
                                    "saved_object_attributes": {
                                        "globalpatchername": ""
                                    },
                                    "text": "p tutorials"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 20.0,
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        9.0,
                                        10.0,
                                        103.0,
                                        30.0
                                    ],
                                    "text": "Tutorials:",
                                    "textjustification": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-73",
                                        0
                                    ],
                                    "hidden": 1,
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-73",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-116"
                    },
                    "patching_rect": [
                        217.0,
                        188.0,
                        61.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Tutorials"
                }
            },
            {
                "box": {
                    "id": "obj-53",
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
                            0.0,
                            26.0,
                            682.0,
                            538.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        184.0,
                                        135.412109375,
                                        363.0,
                                        18.0
                                    ],
                                    "text": "A dial object with a modulation depth paremeter built in"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-2",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        5.0,
                                        132.412109375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.moddial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        184.0,
                                        101.412109375,
                                        363.0,
                                        18.0
                                    ],
                                    "text": "A GUI object that allows for the creation of paterns on an XY pad"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-40",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        5.0,
                                        98.412109375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.function2D"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        184.0,
                                        67.412109375,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "A GUI object that can visualize grains"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-9",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        5.0,
                                        64.412109375,
                                        159.0,
                                        25.0
                                    ],
                                    "text": "grainflow.waveform~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        75.0,
                                        183.412109375,
                                        74.0,
                                        20.0
                                    ],
                                    "text": "prepend help"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        75.0,
                                        212.412109375,
                                        49.0,
                                        20.0
                                    ],
                                    "text": "pcontrol"
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
                                        5.0,
                                        10.412109375,
                                        462.0,
                                        42.0
                                    ],
                                    "text": "Grainflow GUI"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-6",
                                        0
                                    ],
                                    "hidden": 1,
                                    "source": [
                                        "obj-2",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-40",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-6",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-9",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-120"
                    },
                    "patching_rect": [
                        93.0,
                        104.37037037037032,
                        45.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p GUI"
                }
            },
            {
                "box": {
                    "id": "obj-52",
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
                            0.0,
                            26.0,
                            682.0,
                            538.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        138.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Automatic stereo panning on new grains"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-10",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        135.0,
                                        205.0,
                                        21.0
                                    ],
                                    "text": "grainflow.util.stereoPan~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        303.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Detects changes in a list"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        364.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Accesses a list using a normalized range"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-6",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        364.0,
                                        203.0,
                                        23.0
                                    ],
                                    "text": "grainflow.util.list~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        334.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Generates 2D envelopes from a collection of buffers"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-5",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        332.0,
                                        203.0,
                                        23.0
                                    ],
                                    "text": "grainflow.util.genEnv2D"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        265.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Generates a list of random numbers"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        230.0,
                                        285.0,
                                        18.0
                                    ],
                                    "text": "A phasor that can wrap at different loop points in various ways"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        196.0,
                                        304.0,
                                        30.0
                                    ],
                                    "text": "Outputs parameters and a grainclock to interact with grainflow using grain size and grain rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        248.0,
                                        169.0,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "Automatic multichannel circular panning on new grains"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        247.5,
                                        103.5,
                                        304.0,
                                        18.0
                                    ],
                                    "text": "A recording tool that records in grains"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        247.5,
                                        63.0,
                                        304.0,
                                        30.0
                                    ],
                                    "text": "A simple recording tool that has an accurate position output that can be used as a traversal phasor"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-22",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        261.0,
                                        203.0,
                                        27.0
                                    ],
                                    "text": "grainflow.util.randomRangeList"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-11",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        228.0,
                                        203.0,
                                        23.0
                                    ],
                                    "text": "grainflow.util.phasor~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-2",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        99.66666666666667,
                                        204.5,
                                        26.0
                                    ],
                                    "text": "grainflow.util.grainRecord~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-3",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        197.0,
                                        205.0,
                                        21.0
                                    ],
                                    "text": "grainflow.util.rateSizePhasor~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-1",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        166.0,
                                        205.0,
                                        21.0
                                    ],
                                    "text": "grainflow.util.multiPan~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        112.0,
                                        406.0,
                                        74.0,
                                        20.0
                                    ],
                                    "text": "prepend help"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        112.0,
                                        429.0,
                                        49.0,
                                        20.0
                                    ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-32",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        63.0,
                                        205.0,
                                        26.5
                                    ],
                                    "text": "grainflow.util.record~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-27",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        20.0,
                                        299.0,
                                        203.0,
                                        23.00000000000003
                                    ],
                                    "text": "grainflow.util.listChange"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 30.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        10.0,
                                        13.0,
                                        455.0,
                                        42.0
                                    ],
                                    "text": "Grainflow.Util"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        122.5,
                                        190.0,
                                        6.0,
                                        190.0,
                                        6.0,
                                        426.0,
                                        121.5,
                                        426.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        122.5,
                                        157.0,
                                        6.0,
                                        157.0,
                                        6.0,
                                        417.0,
                                        121.5,
                                        417.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        121.5,
                                        255.0,
                                        6.0,
                                        255.0,
                                        6.0,
                                        456.0,
                                        121.5,
                                        456.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        122.25,
                                        126.0,
                                        6.0,
                                        126.0,
                                        6.0,
                                        426.0,
                                        121.5,
                                        426.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        121.5,
                                        294.0,
                                        6.0,
                                        294.0,
                                        6.0,
                                        456.0,
                                        121.5,
                                        456.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        121.5,
                                        327.0,
                                        6.0,
                                        327.0,
                                        6.0,
                                        456.0,
                                        121.5,
                                        456.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        122.5,
                                        222.0,
                                        6.0,
                                        222.0,
                                        6.0,
                                        456.0,
                                        121.5,
                                        456.0
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
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        122.5,
                                        93.0,
                                        6.0,
                                        93.0,
                                        6.0,
                                        426.0,
                                        121.5,
                                        426.0
                                    ],
                                    "source": [
                                        "obj-32",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-36",
                                        0
                                    ],
                                    "hidden": 1,
                                    "source": [
                                        "obj-35",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-5",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-35",
                                        0
                                    ],
                                    "hidden": 1,
                                    "source": [
                                        "obj-6",
                                        1
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-122"
                    },
                    "patching_rect": [
                        54.0,
                        65.37037037037032,
                        63.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p Utilities"
                }
            },
            {
                "box": {
                    "id": "obj-51",
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
                            183.0,
                            138.0,
                            682.0,
                            538.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        389.0,
                                        54.0,
                                        271.0,
                                        32.0
                                    ],
                                    "text": ";\r\nmax launchbrowser https://discord.gg/8RUUUvjVgK"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        0.564705882352941,
                                        0.0,
                                        1.0,
                                        1.0
                                    ],
                                    "id": "obj-6",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        389.0,
                                        17.166666666666515,
                                        219.0,
                                        30.0
                                    ],
                                    "text": "Join the Grainflow Discord",
                                    "textoncolor": [
                                        1.0,
                                        1.0,
                                        1.0,
                                        1.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        417.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "Stereo sustain effect"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-1",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        412.0,
                                        160.0,
                                        29.398148148148152
                                    ],
                                    "text": "grainflow.sustain~"
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
                                        182.0,
                                        446.0,
                                        300.0,
                                        30.0
                                    ],
                                    "text": "An interface to allow for easy control of multiple instances of grainflow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        380.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "A wavelet-like synthesizer created through granulation"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        348.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "A granular chorus effect"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        316.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "A granular sampler"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        284.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "A tool for creating granular snapshots"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        182.0,
                                        252.0,
                                        300.0,
                                        18.0
                                    ],
                                    "text": "A basic granular harmonizer"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        149.0,
                                        157.0,
                                        311.0,
                                        30.0
                                    ],
                                    "text": "A live implementation of grainflow that allows for granulation of live input"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        493.0,
                                        74.0,
                                        20.0
                                    ],
                                    "text": "prepend help"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        518.0,
                                        49.0,
                                        20.0
                                    ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-29",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        343.0,
                                        160.0,
                                        26.0
                                    ],
                                    "text": "grainflow.chorus~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-21",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        279.0,
                                        160.0,
                                        26.0
                                    ],
                                    "text": "grainflow.freeze~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-20",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        448.0,
                                        160.0,
                                        26.0
                                    ],
                                    "text": "grainflow.streams~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-19",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        375.0,
                                        160.0,
                                        29.398148148148152
                                    ],
                                    "text": "grainflow.scrubSynth~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "id": "obj-18",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        155.0,
                                        119.0,
                                        34.0
                                    ],
                                    "text": "grainflow.live~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-17",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        311.0,
                                        160.0,
                                        26.0
                                    ],
                                    "text": "grainflow.synth~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        247.0,
                                        160.0,
                                        26.0
                                    ],
                                    "text": "grainflow.harmonize~"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        210.0,
                                        250.0,
                                        26.0
                                    ],
                                    "text": "Grainflow Abstractions:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        63.0,
                                        640.0,
                                        30.0
                                    ],
                                    "text": "Grainflow is a powerful and flexible sample accurate granular engine.  Grainflow can be used for granular sampling, synthesis, delay, reverb and many other creative and non-standard applications."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 36.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        5.0,
                                        4.0,
                                        360.0,
                                        50.0
                                    ],
                                    "text": "Grainflow Overview"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        149.0,
                                        113.0,
                                        478.0,
                                        30.0
                                    ],
                                    "text": "Everything in this package is built on top of this grainflow~.  Each of these implementations can be seen as a tool or an example of how to use grainflow~ for many purposes."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "id": "obj-5",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        15.0,
                                        113.0,
                                        119.0,
                                        31.0
                                    ],
                                    "text": "grainflow~"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "source": [
                                        "obj-1",
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
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        386.1712962962962,
                                        24.5,
                                        386.1712962962962
                                    ],
                                    "source": [
                                        "obj-15",
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
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        418.06944444444434,
                                        24.5,
                                        418.06944444444434
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
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        74.5,
                                        367.2222222222221,
                                        24.5,
                                        367.2222222222221
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
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        451.6666666666666,
                                        24.5,
                                        451.6666666666666
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
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        486.4166666666666,
                                        24.5,
                                        486.4166666666666
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
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        402.12037037037027,
                                        24.5,
                                        402.12037037037027
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
                                        "obj-34",
                                        0
                                    ],
                                    "hidden": 1,
                                    "midpoints": [
                                        95.0,
                                        434.0185185185184,
                                        24.5,
                                        434.0185185185184
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
                                        "obj-33",
                                        0
                                    ],
                                    "hidden": 1,
                                    "source": [
                                        "obj-34",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-5",
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
                                    "hidden": 1,
                                    "source": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-124",
                        "color": [
                            0.470588235294118,
                            1.0,
                            0.403921568627451,
                            1.0
                        ],
                        "syntax_objectcolor": [
                            0.470588235294118,
                            1.0,
                            0.403921568627451,
                            1.0
                        ]
                    },
                    "patching_rect": [
                        25.0,
                        33.0,
                        87.0,
                        21.0
                    ],
                    "saved_object_attributes": {
                        "color": [
                            0.470588235294118,
                            1.0,
                            0.403921568627451,
                            1.0
                        ],
                        "globalpatchername": "",
                        "syntax_objectcolor": [
                            0.470588235294118,
                            1.0,
                            0.403921568627451,
                            1.0
                        ]
                    },
                    "text": "p Abstractions"
                }
            }
        ],
        "lines": [],
        "originid": "pat-112",
        "dependency_cache": [],
        "autosave": 0,
        "editing_bgcolor": [
            0.956862745098039,
            0.956862745098039,
            0.956862745098039,
            1.0
        ]
    }
}