{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 1,
            "revision": 8,
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
        "openinpresentation": 1,
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
                    "comment": "",
                    "id": "obj-10",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        147.0,
                        87.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 24.0,
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        17.0,
                        17.0,
                        181.0,
                        64.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [
                        -2.0,
                        -1.0,
                        117.0,
                        64.0
                    ],
                    "text": "Grainflow\nChorus"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-4",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        147.0,
                        299.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "automation": "Enable",
                    "automationon": "Enabled",
                    "id": "obj-3",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        147.0,
                        156.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        72.0,
                        85.0,
                        32.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Enable",
                                "Enabled"
                            ],
                            "parameter_longname": "State",
                            "parameter_mmax": 1,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "Enable",
                    "texton": "Enabled",
                    "varname": "State"
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "id": "obj-2",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        147.0,
                        189.0,
                        50.0,
                        63.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        166.0,
                        19.0,
                        50.0,
                        63.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Chorus",
                            "parameter_mmax": 10.0,
                            "parameter_shortname": "Chorus",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "Chorus"
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
                        147.0,
                        249.0,
                        167.0,
                        22.0
                    ],
                    "text": "grainFlow.chorus~ 0.5 5000 10"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        17.0,
                        149.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        -2.0,
                        -1.0,
                        271.0,
                        119.0
                    ],
                    "rounded": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-4",
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
                    "source": [
                        "obj-2",
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
            }
        ],
        "editing_bgcolor": [
            0.956862745098039,
            0.956862745098039,
            0.956862745098039,
            1.0
        ]
    }
}