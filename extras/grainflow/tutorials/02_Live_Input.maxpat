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
            107.0,
            100.0,
            685.0,
            848.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-25",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        145.0,
                        704.0,
                        159.0,
                        68.0
                    ],
                    "text": "grainflow.live~ is a premade version of this examples you can just pull into your patches!"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 9,
                    "outlettype": [
                        "multichannelsignal",
                        "bang",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        40.0,
                        724.0,
                        103.0,
                        23.0
                    ],
                    "text": "grainflow.live~"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        437.0,
                        403.0,
                        84.0,
                        50.0
                    ],
                    "text": "Bang updates the buffer drawing"
                }
            },
            {
                "box": {
                    "id": "obj-20",
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
                        363.0,
                        403.0,
                        65.0,
                        23.0
                    ],
                    "text": "dspstate~"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        363.0,
                        429.0,
                        68.0,
                        23.0
                    ],
                    "text": "qmetro 33"
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
                    "buffername": "_help_grainBuf1",
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
                        363.0,
                        486.0,
                        288.0,
                        101.0
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
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        464.0,
                        758.0,
                        57.0,
                        23.0
                    ],
                    "text": "load $1"
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
                        464.0,
                        782.0,
                        61.0,
                        23.0
                    ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-73",
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
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            569.0,
                            391.0,
                            458.0,
                            480.0
                        ],
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        317.0,
                                        297.0,
                                        30.0,
                                        30.0
                                    ]
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
                                        56.0,
                                        22.0
                                    ],
                                    "text": "sprintf %s"
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
                                        109.0,
                                        394.7222222222223,
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
                                        "obj-63",
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
                                        "obj-3",
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
                                        "obj-72",
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
                        "originid": "pat-723"
                    },
                    "patching_rect": [
                        428.0,
                        691.0,
                        68.0,
                        23.0
                    ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 11.0,
                        "globalpatchername": ""
                    },
                    "text": "p tutorials"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "items": [
                        "01_Grainflow_Basics.maxpat",
                        ",",
                        "02_Live_Input.maxpat",
                        ",",
                        "03_Grain_Spatialization.maxpat",
                        ",",
                        "04_Granular_Synthesis.maxpat",
                        ",",
                        "05_Parameter_Buffers.maxpat",
                        ",",
                        "06_Dynamic_Bussing.maxpat",
                        ",",
                        "07_Grainflow_With_Snowphasor.maxpat"
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
                        427.5,
                        720.0,
                        178.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        319.5,
                        716.0,
                        99.5,
                        29.0
                    ],
                    "text": "Tutorials:",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        11.0,
                        45.0,
                        465.0,
                        35.0
                    ],
                    "text": "Working with live input is easy! This example shows how to do create a live granulator with grainflow~, but you can also use grainflow.live~."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        55.0,
                        305.0,
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
                    "id": "obj-50",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        55.0,
                        305.0,
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
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        165.0,
                        265.0,
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
                    "id": "obj-48",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        165.0,
                        265.0,
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
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40.0,
                        95.5,
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
                        40.0,
                        95.5,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        184.0,
                        265.0,
                        330.0,
                        32.0
                    ],
                    "text": "Sync grainflows traversal to the record head. Be careful to avoid the playhead passing the record head."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        261.0,
                        199.0,
                        281.0,
                        25.0
                    ],
                    "text": "Similar to record~ with some extra features"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        76.0,
                        303.0,
                        93.0,
                        19.0
                    ],
                    "text": "Start grainflow~"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        67.0,
                        94.0,
                        466.0,
                        21.0
                    ],
                    "text": "Start and stop recording.  Stopping will freeze the recording proccess and record head."
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        25.0,
                        301.5,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-36",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        116.0,
                        226.0,
                        195.0,
                        39.0
                    ],
                    "text": "Ouputs recording position as a signal from 0 to 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "lastchannelcount": 16,
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
                        56.0,
                        416.0,
                        196.0,
                        131.0
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
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        56.0,
                        331.0,
                        82.0,
                        23.0
                    ],
                    "text": "phasor~ 15"
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
                        56.0,
                        625.6666666666665,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        ""
                    ],
                    "patching_rect": [
                        56.0,
                        571.0,
                        150.0,
                        23.0
                    ],
                    "text": "grainflow.util.stereoPan~"
                }
            },
            {
                "box": {
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "anton.aif",
                                "filename": "anton.aif",
                                "filekind": "audiofile",
                                "id": "u765006154",
                                "selection": [
                                    0.0,
                                    1.0
                                ],
                                "loop": 0,
                                "content_state": {}
                            }
                        ]
                    },
                    "followglobaltempo": 0,
                    "formantcorrection": 0,
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "originallength": [
                        0.0,
                        "ticks"
                    ],
                    "originaltempo": 120.0,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        86.66666666666669,
                        130.0,
                        150.0,
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
                    "id": "obj-7",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        11.0,
                        92.0,
                        24.0,
                        24.0
                    ],
                    "svg": ""
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Lato",
                    "fontsize": 11.0,
                    "id": "obj-5",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        104.0,
                        265.0,
                        56.0,
                        22.0
                    ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-4",
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
                        56.0,
                        370.0,
                        428.5,
                        23.0
                    ],
                    "text": "grainflow~ gf.tut2 16 @rateRandom 0.025 @delayRandom 100 @rate 0.985"
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
                        116.0,
                        171.0,
                        134.0,
                        23.0
                    ],
                    "text": "buffer~ gf.tut2 10000"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        87.0,
                        200.0,
                        167.0,
                        23.0
                    ],
                    "text": "grainflow.util.record~ gf.tut2"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 30.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        11.0,
                        1.0,
                        459.0,
                        42.0
                    ],
                    "text": "2) Live Input"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-26",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        32.0,
                        684.5,
                        285.5,
                        98.5
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-16",
                        0
                    ],
                    "midpoints": [
                        244.5,
                        222.0,
                        300.0,
                        222.0,
                        300.0,
                        252.0,
                        541.0,
                        252.0,
                        541.0,
                        467.0,
                        372.5,
                        467.0
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
                        "obj-4",
                        1
                    ],
                    "midpoints": [
                        96.5,
                        294.0,
                        202.0,
                        294.0
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
                        "obj-5",
                        0
                    ],
                    "midpoints": [
                        96.5,
                        233.0,
                        113.5,
                        233.0
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
                        "obj-4",
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
                        "obj-10",
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
                        "obj-19",
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
                        "obj-20",
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
                        "obj-38",
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
                    "midpoints": [
                        167.875,
                        405.0,
                        264.0,
                        405.0,
                        264.0,
                        558.0,
                        196.5,
                        558.0
                    ],
                    "source": [
                        "obj-4",
                        2
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
                        "obj-4",
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
                    "midpoints": [
                        116.6875,
                        398.0,
                        348.0,
                        398.0,
                        348.0,
                        471.0,
                        372.5,
                        471.0
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        20.5,
                        173.5,
                        96.5,
                        173.5
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
                        "obj-73",
                        0
                    ],
                    "hidden": 1,
                    "midpoints": [
                        516.5,
                        752.0,
                        610.75,
                        752.0,
                        610.75,
                        673.1666666666666,
                        437.5,
                        673.1666666666666
                    ],
                    "source": [
                        "obj-70",
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
                        "obj-73",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-73",
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
        "originid": "pat-699",
        "parameters": {
            "obj-13": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "anton.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            },
            {
                "name": "grainflow.live~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/code",
                "patcherrelativepath": "../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereoPan~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
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
                "name": "thru.maxpat",
                "bootpath": "C74:/patchers/m4l/Pluggo for Live resources/patches",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [
                    "obj-29",
                    "obj-35"
                ]
            },
            {
                "boxes": [
                    "obj-48",
                    "obj-47"
                ]
            },
            {
                "boxes": [
                    "obj-50",
                    "obj-49"
                ]
            }
        ]
    }
}