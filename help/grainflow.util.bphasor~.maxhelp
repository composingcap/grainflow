{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100.0,
            100.0,
            534.0,
            597.0
        ],
        "gridsize": [
            15.0,
            15.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        227.0,
                        78.0,
                        68.0,
                        23.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-38",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        319.0,
                        259.0,
                        174.0,
                        54.0
                    ],
                    "text": "You can use the data outlet of grainflow~ to dynamically change buffers"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        45.0,
                        78.0,
                        165.0,
                        25.0
                    ],
                    "text": "Turn on the granulator"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        364.0,
                        193.5,
                        101.0,
                        39.0
                    ],
                    "text": "Phase offset from 0-1"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        192.0,
                        113.0,
                        101.0,
                        25.0
                    ],
                    "text": "Playback Rate"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "id": "obj-33",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        264.0,
                        157.0,
                        151.0,
                        39.0
                    ],
                    "text": "Resets the phasor to the phase offset"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        227.0,
                        164.0,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        25.0,
                        53.0,
                        408.0,
                        21.0
                    ],
                    "text": "Creates a phasor based on the playback rate of a buffer."
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        17.0,
                        5.0,
                        408.0,
                        42.0
                    ],
                    "text": "grainflow.util.bphasor~"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        227.0,
                        193.5,
                        36.0,
                        23.0
                    ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-25",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        312.0,
                        201.5,
                        51.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        6.0,
                        242.0,
                        78.0,
                        23.0
                    ],
                    "text": "buf _bphasor"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        8.0,
                        267.0,
                        85.0,
                        23.0
                    ],
                    "text": "buf _bphasor2"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        319.0,
                        125.0,
                        141.0,
                        23.0
                    ],
                    "text": "buffer~ _bphasor2 anton"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        31.0,
                        172.0,
                        62.0,
                        23.0
                    ],
                    "text": "phasor~ 8"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-14",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        140.0,
                        113.0,
                        51.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        "list"
                    ],
                    "patching_rect": [
                        104.0,
                        338.0,
                        151.0,
                        23.0
                    ],
                    "text": "grainflow.util.stereoPan~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-11",
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
                        104.0,
                        385.0,
                        137.0,
                        47.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_osc_name": "<default>",
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
                    "id": "obj-10",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        104.0,
                        441.0,
                        46.0,
                        46.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        17.0,
                        78.0,
                        25.0,
                        25.0
                    ],
                    "svg": ""
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
                        "list",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal",
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        104.0,
                        290.0,
                        127.0,
                        23.0
                    ],
                    "text": "grainflow~ _bphasor 4"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        319.0,
                        85.0,
                        151.0,
                        23.0
                    ],
                    "text": "buffer~ _bphasor femvoice"
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
                        "float"
                    ],
                    "patching_rect": [
                        140.0,
                        242.0,
                        192.0,
                        23.0
                    ],
                    "text": "grainflow.util.bphasor~ _bphasor 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-7",
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
                        "obj-10",
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
                        "obj-11",
                        0
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
                        0
                    ],
                    "midpoints": [
                        149.5,
                        142.5,
                        149.5,
                        142.5
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
                        "obj-7",
                        0
                    ],
                    "midpoints": [
                        40.5,
                        228.5,
                        113.5,
                        228.5
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
                        "obj-20",
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
                        "obj-21",
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
                        "obj-25",
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
                        236.5,
                        238.0,
                        149.5,
                        238.0
                    ],
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
                        0
                    ],
                    "source": [
                        "obj-31",
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
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "midpoints": [
                        127.0,
                        318.0,
                        487.9761904761905,
                        318.0,
                        487.9761904761905,
                        155.0,
                        149.5,
                        155.0
                    ],
                    "source": [
                        "obj-7",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
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
                        "obj-7",
                        0
                    ],
                    "midpoints": [
                        26.5,
                        157.5,
                        113.5,
                        157.5
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-18",
        "parameters": {
            "obj-11": [
                "mc.live.gain~",
                "mc.live.gain~",
                0
            ],
            "parameterbanks": {},
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "grainflow.util.bphasor~.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/util",
                "patcherrelativepath": "../patchers/util",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.util.stereopan~.mxe64",
                "type": "mx64"
            },
            {
                "name": "grainflow~.mxe64",
                "type": "mx64"
            }
        ],
        "autosave": 0
    }
}