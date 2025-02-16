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
            733.0,
            669.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "grainflow.spatview~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        242.0,
                        429.0,
                        475.0,
                        190.0
                    ],
                    "speakerPositions": [
                        -1.0,
                        1.0,
                        0.0,
                        1.0,
                        1.0,
                        0.0,
                        -1.0,
                        -1.0,
                        0.0,
                        1.0,
                        -1.0,
                        0.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        371.25,
                        246.0,
                        57.0,
                        35.0
                    ],
                    "text": "Slice max"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        252.79166666666669,
                        246.0,
                        57.0,
                        21.0
                    ],
                    "text": "Slice min"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        319.25,
                        246.0,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                4
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[1]",
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "number[1]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[1]"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        200.79166666666669,
                        246.0,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number",
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "number",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        319.25,
                        339.0,
                        253.0,
                        23.0
                    ],
                    "text": "grainflow.spat.3dspread 0.25 @center -1 -1 0"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        82.33333333333337,
                        286.0,
                        255.91666666666663,
                        23.0
                    ],
                    "text": "grainflow.spat.split 0 4"
                }
            },
            {
                "box": {
                    "id": "obj-14",
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
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        80.0,
                                        36.0
                                    ],
                                    "text": "loadmess quad"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "clear"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        131.5,
                                        134.0,
                                        22.0
                                    ],
                                    "text": "grainflow.spat.speakers"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        49.99997966666672,
                                        213.5,
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
                                        "obj-54",
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
                                        "obj-54",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-2935"
                    },
                    "patching_rect": [
                        91.0,
                        415.0,
                        74.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "globalpatchername": ""
                    },
                    "text": "p speakers"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        53.0,
                        508.0,
                        80.0,
                        23.0
                    ],
                    "text": "mc.stereo~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        82.0,
                        321.0,
                        245.0,
                        23.0
                    ],
                    "text": "grainflow.spat.3dspread 0.25 @center 1 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        53.0,
                        100.0,
                        150.0,
                        21.0
                    ],
                    "text": "Turn on the granulator"
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
                        53.0,
                        130.0,
                        77.0,
                        23.0
                    ],
                    "text": "loadmess 10"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-47",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        53.0,
                        154.0,
                        50.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        23.0,
                        59.0,
                        320.83333333333326,
                        21.0
                    ],
                    "text": "Split grain spat messaged based on their grain ID"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "local": 1,
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        53.0,
                        550.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        23.0,
                        16.0,
                        355.0,
                        42.0
                    ],
                    "text": "grainflow.spat.split"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        92.0,
                        216.0,
                        44.0,
                        23.0
                    ],
                    "text": "noise~"
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
                        53.0,
                        472.5,
                        128.0,
                        23.0
                    ],
                    "text": "grainflow.spat.pan~"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        53.0,
                        187.0,
                        69.0,
                        23.0
                    ],
                    "text": "phasor~ 10"
                }
            },
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
                        27.0,
                        98.0,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        229.0,
                        120.0,
                        184.0,
                        23.0
                    ],
                    "text": "buffer~ _spat.pansp jongly"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 2,
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
                        53.0,
                        246.0,
                        136.0,
                        37.0
                    ],
                    "text": "grainflow~ _spat.pansp 10"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [
                        0.874509803921569,
                        0.250980392156863,
                        0.717647058823529,
                        1.0
                    ],
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        91.5,
                        366.75,
                        62.5,
                        366.75
                    ],
                    "source": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.874509803921569,
                        0.250980392156863,
                        0.717647058823529,
                        1.0
                    ],
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        328.75,
                        371.25,
                        62.5,
                        371.25
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
                        "obj-2",
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
                        "obj-47",
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
                        "obj-6",
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
                        "obj-9",
                        0
                    ],
                    "midpoints": [
                        36.5,
                        226.5,
                        62.5,
                        226.5
                    ],
                    "source": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.874509803921569,
                        0.250980392156863,
                        0.717647058823529,
                        1.0
                    ],
                    "destination": [
                        "obj-3",
                        0
                    ],
                    "midpoints": [
                        171.5,
                        504.5,
                        216.5,
                        504.5,
                        216.5,
                        389.0,
                        251.5,
                        389.0
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
                        "obj-33",
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
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        2
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
                        "obj-33",
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
                        "obj-4",
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
                        "obj-6",
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
                        "obj-2",
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
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-9",
                        2
                    ]
                }
            }
        ],
        "originid": "pat-2919",
        "parameters": {
            "obj-17": [
                "number",
                "number",
                0
            ],
            "obj-22": [
                "number[1]",
                "number[1]",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
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
                "name": "grainflow.spat.3dspread.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
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
                "name": "grainflow.spat.speakers.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.split.maxpat",
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
            }
        ],
        "autosave": 0
    }
}