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
            86.0,
            91.0,
            704.0,
            480.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        47.0,
                        430.0,
                        33.0
                    ],
                    "text": "Identifies changes in lists.  Is useful for anylizing information about lists of grains"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        2.0,
                        430.0,
                        43.0
                    ],
                    "text": "grainflow.util.listChange"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-15",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        263.0,
                        389.0,
                        262.0,
                        39.0
                    ],
                    "text": "List of changed indices multiplied by direction (outputs nothing if not changed)"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        143.0,
                        332.0,
                        169.0,
                        39.0
                    ],
                    "text": "Direction of the change (0 is no change)"
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
                        130.0,
                        220.0,
                        278.0,
                        23.0
                    ],
                    "text": "0.014001 0.967697 0.268327 0.877588 0.563356"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        112.0,
                        107.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        176.0,
                        397.0,
                        85.5,
                        23.0
                    ],
                    "text": "-1 2 -3 4 5"
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
                        9.0,
                        340.0,
                        122.0,
                        23.0
                    ],
                    "text": "-1 1 -1 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        112.0,
                        152.0,
                        210.0,
                        23.0
                    ],
                    "text": "grainflow.util.randomRangeList 5 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        112.0,
                        261.0,
                        149.0,
                        23.0
                    ],
                    "text": "grainflow.util.listChange"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        1
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
                        1
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
                        "obj-1",
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
                        "obj-1",
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
                        "obj-10",
                        1
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
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-362",
        "dependency_cache": [
            {
                "name": "grainflow.util.listChange.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.randomRangeList.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}