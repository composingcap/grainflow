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
            530.0,
            480.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        277.0,
                        171.0,
                        150.0,
                        24.0
                    ],
                    "text": "Max"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        213.66666666666666,
                        141.0,
                        150.0,
                        24.0
                    ],
                    "text": "Min"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        138.33333333333331,
                        112.0,
                        150.0,
                        24.0
                    ],
                    "text": "List size"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        222.0,
                        171.0,
                        50.0,
                        22.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1.0
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
                    "format": 6,
                    "id": "obj-15",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        155.66666666666666,
                        141.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        89.33333333333333,
                        113.0,
                        50.0,
                        22.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                20
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
                    "bubble": 1,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        56.0,
                        80.0,
                        150.0,
                        24.0
                    ],
                    "text": "Generate a list"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        51.0,
                        393.0,
                        20.0
                    ],
                    "text": "Generates a random list of n elements between two numbers"
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        4.0,
                        425.0,
                        42.0
                    ],
                    "text": "grainflow.util.randomRangeList"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "outlinecolor": [
                        0.847058823529412,
                        0.847058823529412,
                        0.847058823529412,
                        1.0
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        23.0,
                        80.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        23.0,
                        247.0,
                        354.0,
                        124.0
                    ],
                    "setminmax": [
                        0.0,
                        1.0
                    ],
                    "size": 20
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        23.0,
                        206.0,
                        218.0,
                        23.0
                    ],
                    "text": "grainflow.util.randomRangeList 20 0. 1."
                }
            }
        ],
        "lines": [
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
                        "obj-1",
                        1
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
                        "obj-1",
                        2
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
        "originid": "pat-344",
        "parameters": {
            "obj-13": [
                "number",
                "number",
                0
            ],
            "obj-17": [
                "number[1]",
                "number[1]",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
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