{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 6,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            1330.0,
            578.0,
            1082.0,
            724.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Lato",
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
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        14.0,
                        108.0,
                        56.0,
                        23.0
                    ],
                    "text": "deferlow"
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
                        14.0,
                        130.0,
                        32.0,
                        23.0
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.3,
                    "id": "obj-35",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        67.0,
                        194.0,
                        131.83333333333334,
                        54.0
                    ],
                    "text": "Add delay so grains will not \"look into the future\""
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
                        11.0,
                        194.0,
                        54.0,
                        23.0
                    ],
                    "text": "delay 75"
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
                        15.0,
                        46.0,
                        372.0,
                        35.0
                    ],
                    "text": "This patch demonstrates how to use the streams system within grainflow to create a multitap vdelay. "
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
                        350.83333333333337,
                        413.0,
                        150.0,
                        35.0
                    ],
                    "text": "There are 2 grains per delay / stream",
                    "textcolor": [
                        0.368627450980392,
                        0.368627450980392,
                        0.368627450980392,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-27",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        202.83333333333334,
                        409.5,
                        139.0,
                        54.0
                    ],
                    "text": "Has a buffer (max delay) of 500ms and 10 grains"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-26",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        131.0,
                        153.0,
                        139.0,
                        39.0
                    ],
                    "text": "Sets the grainflow to have 5 streams"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        437.0,
                        265.0,
                        173.0,
                        39.0
                    ],
                    "text": "Sets the transposition for each stream"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-24",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        564.0,
                        145.5,
                        128.0,
                        54.0
                    ],
                    "text": "Set transpositions. Samples on new grains."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        106.83333333333334,
                        268.5,
                        85.0,
                        25.0
                    ],
                    "text": "Turn on"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        223.5,
                        56.0,
                        21.0
                    ],
                    "text": "-12 st"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        235.0,
                        131.0,
                        56.0,
                        21.0
                    ],
                    "text": "+12 st"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        293.0,
                        104.0,
                        96.0,
                        23.0
                    ],
                    "text": "zl.reg 0 -5 5 -7 7"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        73.83333333333334,
                        268.5,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        73.83333333333334,
                        534.0,
                        45.0,
                        45.0
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
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        73.83333333333334,
                        480.0,
                        151.0,
                        23.0
                    ],
                    "text": "mc.mixdown~ @autogain 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        14.0,
                        89.0,
                        58.0,
                        23.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "accentcolor": [
                        0.258823529411765,
                        0.258823529411765,
                        0.258823529411765,
                        1.0
                    ],
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "anton.aif",
                                "filename": "anton.aif",
                                "filekind": "audiofile",
                                "id": "u093001750",
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
                    "id": "obj-12",
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
                        85.0,
                        319.0,
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
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        293.0,
                        269.0,
                        133.0,
                        23.0
                    ],
                    "text": "stream $1 transpose $2"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        7.0,
                        290.0,
                        35.0
                    ],
                    "text": "Grainflow multiharmonizer"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "list"
                    ],
                    "patching_rect": [
                        293.0,
                        238.0,
                        67.0,
                        23.0
                    ],
                    "text": "listfunnel 1"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-5",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        293.0,
                        131.0,
                        269.0,
                        100.0
                    ],
                    "setminmax": [
                        -12.0,
                        12.0
                    ],
                    "setstyle": 1,
                    "signed": 1,
                    "size": 5,
                    "spacing": 2,
                    "thickness": 5
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        113.16666666666669,
                        351.0,
                        68.0,
                        23.0
                    ],
                    "text": "phasor~ 15"
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
                        30.0,
                        161.0,
                        99.0,
                        23.0
                    ],
                    "text": "streamSet auto 5"
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
                        73.83333333333334,
                        425.0,
                        127.0,
                        23.0
                    ],
                    "text": "grainflow.live~ 500 10"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-14",
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
                        302.5,
                        390.5,
                        83.33333333333334,
                        390.5
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        94.5,
                        392.5,
                        83.33333333333334,
                        392.5
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
                        "obj-15",
                        1
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
                        "obj-15",
                        0
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
                        "obj-1",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-17",
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
                    "midpoints": [
                        83.33333333333334,
                        306.75,
                        94.5,
                        306.75
                    ],
                    "order": 0,
                    "source": [
                        "obj-17",
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
                    "order": 0,
                    "source": [
                        "obj-2",
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
                    "order": 1,
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
                    "midpoints": [
                        39.5,
                        390.0,
                        83.33333333333334,
                        390.0
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        20.5,
                        391.5,
                        83.33333333333334,
                        391.5
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
                        "obj-10",
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
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "Grainflow.voice~.mxe64",
                "type": "mx64"
            },
            {
                "name": "anton.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
            },
            {
                "name": "grainFlow~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.live~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "thru.maxpat",
                "bootpath": "C74:/patchers/m4l/Pluggo for Live resources/patches",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}