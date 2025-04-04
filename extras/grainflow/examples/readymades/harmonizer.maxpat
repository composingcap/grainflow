{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 1,
            "revision": 10,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            86.0,
            91.0,
            947.0,
            480.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 11.0,
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
                    "basictuning": 440,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "anton.aif",
                                "filename": "anton.aif",
                                "filekind": "audiofile",
                                "id": "u556005756",
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
                        20.0,
                        16.0,
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
                    "elementcolor": [
                        0.694117647058824,
                        0.694117647058824,
                        0.694117647058824,
                        1.0
                    ],
                    "id": "obj-3",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        264.0,
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
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        209.0,
                        37.0,
                        29.5,
                        22.0
                    ],
                    "text": "join"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        209.0,
                        5.0,
                        40.0,
                        22.0
                    ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "maxclass": "bpatcher",
                    "name": "grainflow.readymade.harmonize~.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        20.0,
                        71.0,
                        628.0,
                        149.0
                    ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-3",
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
                        "obj-5",
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
                        "obj-5",
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
            }
        ],
        "parameters": {
            "obj-1::obj-32": [
                "pitchJitter",
                "timeJitter",
                0
            ],
            "obj-1::obj-38": [
                "grainsize",
                "grainsize",
                0
            ],
            "obj-1::obj-45": [
                "timeJitter",
                "timeJitter",
                0
            ],
            "parameterbanks": {},
            "parameter_overrides": {
                "obj-1::obj-32": {
                    "parameter_longname": "pitchJitter",
                    "parameter_range": [
                        0.0,
                        6.0
                    ],
                    "parameter_unitstyle": 1
                },
                "obj-1::obj-38": {
                    "parameter_exponent": 2.0,
                    "parameter_initial": 125,
                    "parameter_initial_enable": 1,
                    "parameter_linknames": 1,
                    "parameter_longname": "grainsize",
                    "parameter_range": [
                        50.0,
                        1000.0
                    ],
                    "parameter_shortname": "grainsize",
                    "parameter_unitstyle": 2
                },
                "obj-1::obj-45": {
                    "parameter_exponent": 1.0,
                    "parameter_initial": 0,
                    "parameter_longname": "timeJitter",
                    "parameter_range": [
                        0.0,
                        100.0
                    ],
                    "parameter_shortname": "timeJitter",
                    "parameter_unitstyle": 5
                }
            },
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.readymade.harmonize~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/readymades",
                "patcherrelativepath": "../../../patchers/readymades",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.harmonize~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.record~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../../../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.record.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "_grainflow.harmVoice.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "anton.aif",
                "bootpath": "C74:/media/msp",
                "type": "AIFF",
                "implicit": 1
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