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
            100.0,
            100.0,
            597.0,
            480.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "elementcolor": [
                        0.694117647058824,
                        0.694117647058824,
                        0.694117647058824,
                        1.0
                    ],
                    "id": "obj-2",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        345.0,
                        364.5,
                        45.0,
                        45.0
                    ]
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
                        375.0,
                        77.0,
                        197.0,
                        54.0
                    ],
                    "text": "Sah mode will only change the frequency of the phasor on a new cycle"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        388.0,
                        215.0,
                        157.0,
                        21.0
                    ],
                    "text": "mode 2 is fold"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        345.0,
                        84.0,
                        24.0,
                        24.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "toggle",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
                            "parameter_shortname": "toggle",
                            "parameter_type": 2
                        }
                    },
                    "svg": "",
                    "uncheckedcolor": [
                        0.592156862745098,
                        0.592156862745098,
                        0.592156862745098,
                        1.0
                    ],
                    "varname": "toggle"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        345.0,
                        133.0,
                        76.0,
                        23.0
                    ],
                    "text": "sahMode $1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        20.0,
                        203.0,
                        52.0,
                        23.0
                    ],
                    "text": "set 0.5"
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
                        20.0,
                        168.0,
                        43.0,
                        23.0
                    ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        388.0,
                        189.0,
                        157.0,
                        21.0
                    ],
                    "text": "mode 1 is warp"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        334.0,
                        215.0,
                        53.0,
                        23.0
                    ],
                    "text": "mode 2"
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
                        334.0,
                        189.0,
                        53.0,
                        23.0
                    ],
                    "text": "mode 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        18.0,
                        98.0,
                        90.0,
                        23.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        148.0,
                        189.0,
                        81.5,
                        23.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        202.0,
                        224.0,
                        101.0,
                        24.0
                    ],
                    "text": "high bound"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-14",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        148.0,
                        224.0,
                        49.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        121.0,
                        155.0,
                        91.0,
                        25.0
                    ],
                    "text": "low bound"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-12",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        75.0,
                        155.0,
                        49.0,
                        22.0
                    ]
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
                        79.5,
                        125.0,
                        150.0,
                        24.0
                    ],
                    "text": "Rate"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-8",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        18.0,
                        123.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "bufsize": 256,
                    "id": "obj-6",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        20.0,
                        331.0,
                        287.0,
                        112.0
                    ],
                    "range": [
                        0.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        10.0,
                        52.0,
                        541.0,
                        20.0
                    ],
                    "text": "A phasor that easily wraps and folds around different looping points between 0 and 1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 30.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        10.0,
                        5.0,
                        372.0,
                        42.0
                    ],
                    "text": "grainflow.util.phasor~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        20.0,
                        301.0,
                        146.0,
                        23.0
                    ],
                    "text": "grainflow.util.phasor~ 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-6",
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
                        "obj-12",
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
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-14",
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
                        "obj-8",
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        343.5,
                        286.0,
                        29.5,
                        286.0
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        343.5,
                        283.0,
                        29.5,
                        283.0
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
                        "obj-9",
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
                        "obj-1",
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
                        "obj-1",
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
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        354.5,
                        285.0,
                        29.5,
                        285.0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-304",
        "parameters": {
            "obj-20": [
                "toggle",
                "toggle",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.sahPhasor.gendsp",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/code",
                "patcherrelativepath": "../code",
                "type": "gDSP",
                "implicit": 1
            },
            {
                "name": "grainflow.util.phasor~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}