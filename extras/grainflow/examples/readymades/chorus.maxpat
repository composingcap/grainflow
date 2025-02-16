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
            640.0,
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
                                "id": "u866006057",
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
                    "id": "obj-4",
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
                        31.0,
                        27.0,
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
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        31.0,
                        227.0,
                        45.0,
                        45.0
                    ]
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
                    "name": "grainflow.readymade.chorus~.maxpat",
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
                        31.0,
                        82.0,
                        280.0,
                        123.0
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
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-1::obj-2": [
                "Chorus",
                "Chorus",
                0
            ],
            "obj-1::obj-3": [
                "State",
                "live.text",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.readymade.chorus~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/readymades",
                "patcherrelativepath": "../../../patchers/readymades",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.chorus~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainFlow.live~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../../patchers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainFlow~.maxpat",
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