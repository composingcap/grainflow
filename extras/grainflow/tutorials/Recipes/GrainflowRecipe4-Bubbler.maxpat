{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 2,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            241.0,
            382.0,
            896.0,
            729.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "",
        "digest": "",
        "tags": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-27",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        369.66666666666663,
                        402.0,
                        148.0,
                        52.0
                    ],
                    "presentation_linecount": 6,
                    "text": "Interpolate between two frequencies over the grain's life"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.976470588235294,
                        1.0,
                        0.643137254901961,
                        1.0
                    ],
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-26",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        250.0,
                        98.0,
                        79.0
                    ],
                    "presentation_linecount": 2,
                    "text": "Reports each grain's progress through the envelope"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        108.0,
                        345.0,
                        52.0,
                        22.0
                    ],
                    "text": "mc.!-~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        192.66666666666663,
                        442.0,
                        149.0,
                        22.0
                    ],
                    "text": "mc.+~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        322.66666666666663,
                        402.0,
                        40.0,
                        22.0
                    ],
                    "text": "mc.*~"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        192.66666666666663,
                        402.0,
                        40.0,
                        22.0
                    ],
                    "text": "mc.*~"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        192.66666666666663,
                        289.0,
                        108.0,
                        22.0
                    ],
                    "text": "scale~ -1 1 50 100"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        192.66666666666663,
                        250.0,
                        44.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        192.66666666666663,
                        333.0,
                        64.0,
                        22.0
                    ],
                    "text": "mc.sah~ 0"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        549.0,
                        308.0,
                        216.0,
                        38.0
                    ],
                    "text": "Grain envelope reports the envelope value for each grain"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        528.0,
                        355.0,
                        116.0,
                        22.0
                    ],
                    "text": "mc.scale~ 0 1 5 500"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.772549019607843,
                        1.0,
                        0.768627450980392,
                        1.0
                    ],
                    "bubble": 1,
                    "id": "obj-16",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        383.0,
                        222.0,
                        151.0,
                        66.0
                    ],
                    "presentation_linecount": 4,
                    "text": "Grain state outputs a 0 when a grain is not playing and a 1 when it is."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-13",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        557.0,
                        491.0,
                        161.0,
                        38.0
                    ],
                    "presentation_linecount": 2,
                    "text": "Creates a filter for each grain voice"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.3,
                    "id": "obj-12",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        394.16666666666663,
                        333.0,
                        99.0,
                        66.0
                    ],
                    "presentation_linecount": 5,
                    "text": "Sample a new value when grain state is 0"
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
                        63.0,
                        531.0,
                        156.0,
                        22.0
                    ],
                    "text": "grainflow.util.stereoPan~ 32"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        322.66666666666663,
                        304.0,
                        128.0,
                        22.0
                    ],
                    "text": "scale~ -1 1 1000 3000"
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
                        322.66666666666663,
                        271.0,
                        44.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        322.66666666666663,
                        340.0,
                        64.0,
                        22.0
                    ],
                    "text": "mc.sah~ 0"
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
                        63.0,
                        499.0,
                        484.0,
                        22.0
                    ],
                    "text": "mc.reson~ 10"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 9.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        232.0,
                        100.0,
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
                    "id": "obj-47",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        232.0,
                        100.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        259.0,
                        100.0,
                        83.0,
                        20.0
                    ],
                    "text": "Play sound "
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
                        60.0,
                        57.0,
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
                    "id": "obj-36",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        60.0,
                        57.0,
                        16.0,
                        17.0
                    ],
                    "proportion": 0.39,
                    "shape": 1
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        87.0,
                        57.0,
                        255.0,
                        20.0
                    ],
                    "text": "Enable recording and playback"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        18.0,
                        11.0,
                        369.0,
                        34.0
                    ],
                    "text": "Grainflow Bubbler"
                }
            },
            {
                "box": {
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "brushes.aif",
                                "filename": "brushes.aif",
                                "filekind": "audiofile",
                                "id": "u375002964",
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
                    "id": "obj-6",
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
                        63.0,
                        90.0,
                        150.0,
                        30.0
                    ],
                    "pitchcorrection": 0,
                    "quality": "basic",
                    "timestretch": [
                        0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        98.0,
                        138.0,
                        62.0,
                        22.0
                    ],
                    "text": "phasor~ 8"
                }
            },
            {
                "box": {
                    "id": "obj-45",
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
                        63.0,
                        575.0,
                        136.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
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
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 8,
                    "outlettype": [
                        "multichannelsignal",
                        "bang",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        63.0,
                        175.0,
                        124.0,
                        22.0
                    ],
                    "text": "grainflow.live~ 250 32"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        63.0,
                        636.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        20.0,
                        53.0,
                        24.0,
                        24.0
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
                        "obj-44",
                        0
                    ],
                    "midpoints": [
                        29.5,
                        156.5,
                        72.5,
                        156.5
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
                        "obj-1",
                        3
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
                        "obj-22",
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
                        "obj-21",
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
                        "obj-19",
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
                        "obj-24",
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
                        "obj-24",
                        1
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
                        "obj-1",
                        2
                    ],
                    "midpoints": [
                        202.16666666666663,
                        481.0,
                        382.5,
                        481.0
                    ],
                    "source": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.945098039215686,
                        0.913725490196078,
                        0.407843137254902,
                        1.0
                    ],
                    "destination": [
                        "obj-22",
                        1
                    ],
                    "midpoints": [
                        117.5,
                        385.0,
                        223.16666666666663,
                        385.0
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
                        "obj-23",
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
                        "obj-1",
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
                        "obj-17",
                        0
                    ],
                    "midpoints": [
                        162.5,
                        205.5,
                        537.5,
                        205.5
                    ],
                    "source": [
                        "obj-44",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.27843137254902,
                        0.92156862745098,
                        0.63921568627451,
                        1.0
                    ],
                    "destination": [
                        "obj-19",
                        1
                    ],
                    "midpoints": [
                        102.5,
                        228.5,
                        247.16666666666663,
                        228.5
                    ],
                    "order": 1,
                    "source": [
                        "obj-44",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.945098039215686,
                        0.913725490196078,
                        0.407843137254902,
                        1.0
                    ],
                    "destination": [
                        "obj-23",
                        1
                    ],
                    "midpoints": [
                        117.5,
                        214.5,
                        353.16666666666663,
                        214.5
                    ],
                    "order": 0,
                    "source": [
                        "obj-44",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.945098039215686,
                        0.913725490196078,
                        0.407843137254902,
                        1.0
                    ],
                    "destination": [
                        "obj-25",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-44",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.27843137254902,
                        0.92156862745098,
                        0.63921568627451,
                        1.0
                    ],
                    "destination": [
                        "obj-3",
                        1
                    ],
                    "midpoints": [
                        102.5,
                        227.5,
                        377.16666666666663,
                        227.5
                    ],
                    "order": 0,
                    "source": [
                        "obj-44",
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
                        "obj-45",
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
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        1
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
                        "obj-44",
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
                        "obj-45",
                        0
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-45": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "brushes.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            },
            {
                "name": "grainFlow~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.live~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereoPan~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../Documents/Max 8/Packages/Grainflow/code",
                "type": "gDSP",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [
                    "obj-36",
                    "obj-35"
                ]
            },
            {
                "boxes": [
                    "obj-47",
                    "obj-46"
                ]
            }
        ]
    }
}