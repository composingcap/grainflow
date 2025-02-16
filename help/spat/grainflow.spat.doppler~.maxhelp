{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 5,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            271.0,
            270.0,
            1343.0,
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
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        378.0,
                        20.0,
                        40.0,
                        22.0
                    ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        238.0,
                        411.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 8,
                            "minor": 5,
                            "revision": 4,
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
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        58.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        119.5,
                                        122.0,
                                        22.0
                                    ],
                                    "text": "get \"8ch stereo pairs\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        100.66666666666669,
                                        174.5,
                                        55.0,
                                        22.0
                                    ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "dictionary",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        148.5,
                                        211.0,
                                        22.0
                                    ],
                                    "saved_object_attributes": {
                                        "embed": 0,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict speakers grainflow.speakersetups"
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
                                        136.666656,
                                        256.5,
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
                                        "obj-14",
                                        0
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
                                        "obj-31",
                                        0
                                    ],
                                    "source": [
                                        "obj-14",
                                        1
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
                                        "obj-30",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        71.5,
                        196.0,
                        92.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "description": "",
                        "digest": "",
                        "globalpatchername": "",
                        "tags": ""
                    },
                    "text": "p loadSpeakers"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        230.75,
                        330.0,
                        85.0,
                        22.0
                    ],
                    "text": "mc.mixdown~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        508.0,
                        59.0,
                        100.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        570.0,
                        235.0,
                        57.0,
                        22.0
                    ],
                    "text": "phasor~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        111.0,
                        80.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "linecount": 5,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        385.0,
                        230.0,
                        50.0,
                        74.0
                    ],
                    "text": "xyz 19 2.027543 -0.478733 0."
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
                        433.0,
                        88.0,
                        200.0,
                        22.0
                    ],
                    "text": "translate -4. 0 0, translateRandom 2 0 0"
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
                        426.0,
                        36.0,
                        214.0,
                        22.0
                    ],
                    "text": "translate 2. 0 0, translateRandom 0.1 0.5 0"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        527.0,
                        136.0,
                        130.0,
                        22.0
                    ],
                    "text": "buffer~ _gfdoppler anton"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 9,
                    "outlettype": [
                        "multichannelsignal",
                        "",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        217.0,
                        36.0,
                        130.0,
                        22.0
                    ],
                    "text": "grainflow~ _gfdoppler 20"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        236.0,
                        70.0,
                        127.0,
                        22.0
                    ],
                    "text": "grainflow.spat.transform"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        243.0,
                        126.0,
                        169.0,
                        22.0
                    ],
                    "text": "grainflow.spat.transformOverLife"
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
                        238.0,
                        279.0,
                        103.0,
                        22.0
                    ],
                    "text": "grainflow.spat.pan~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        ""
                    ],
                    "patching_rect": [
                        238.0,
                        174.0,
                        123.0,
                        22.0
                    ],
                    "text": "grainflow.spat.doppler~"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "grainflow.spatview~.js",
                    "id": "obj-19",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        582.0,
                        290.0,
                        416.0,
                        166.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-13",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-1",
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
                    "order": 1,
                    "source": [
                        "obj-1",
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
                        "obj-1",
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
                        "obj-10",
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
                        "obj-11",
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
                        "obj-15",
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
                        "obj-16",
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
                        "obj-2",
                        1
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
                        "obj-2",
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
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
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
                        "obj-32",
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
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        1
                    ],
                    "source": [
                        "obj-7",
                        3
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
                        "obj-7",
                        2
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "_grainflow.poly.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.spat.pointparse.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.spreadlist.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "_grainflow.xyz2aed.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.doppler~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.pan~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.transform.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.transformOverLife.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spatview~.js",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/jsui",
                "patcherrelativepath": "../../jsui",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "grainflow.voice.gendsp",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow~.maxpat",
                "bootpath": "D:/Documents/Max 8/Packages/Grainflow/patchers",
                "patcherrelativepath": "../../patchers",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}