{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 1,
            "revision": 11,
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
        "default_fontsize": 11.0,
        "default_fontface": 0,
        "default_fontname": "Lato Medium",
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
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        50.0,
                        142.0,
                        92.0,
                        22.0
                    ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        50.0,
                        100.0,
                        175.0,
                        22.0
                    ],
                    "text": "mc.gen~ grainflow.vbap3dnode",
                    "varname": "s_0"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-87",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        50.0,
                        40.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-88",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        102.0,
                        40.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-89",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        154.0,
                        40.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-90",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        206.0,
                        40.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-91",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        50.0,
                        224.0,
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
                        "obj-85",
                        0
                    ],
                    "source": [
                        "obj-83",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-91",
                        0
                    ],
                    "source": [
                        "obj-85",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-87",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        1
                    ],
                    "source": [
                        "obj-88",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        2
                    ],
                    "source": [
                        "obj-89",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-83",
                        3
                    ],
                    "source": [
                        "obj-90",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "grainflow.vbap3dnode.gendsp",
                "bootpath": "~/Documents/Max 8/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}