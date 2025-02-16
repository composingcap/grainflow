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
            669.0,
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
                    "id": "obj-5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        345.0,
                        241.5,
                        172.0,
                        39.0
                    ],
                    "text": "use udpsend to send messages over osc"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        200.5,
                        248.0,
                        136.0,
                        23.0
                    ],
                    "text": "udpsend localhost 4048"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        58.0,
                        370.0,
                        32.0
                    ],
                    "text": "Formats spatial coordinates for other spatialization systems. Note that some of these systems are Max externals and others work over OSC."
                }
            },
            {
                "box": {
                    "fontsize": 30.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        13.0,
                        7.0,
                        389.0,
                        41.0
                    ],
                    "text": "grainflow.spat.format"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        39.0,
                        221.0,
                        35.0,
                        23.0
                    ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        50.0,
                        282.0,
                        62.0,
                        23.0
                    ],
                    "text": "zl.group"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-16",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        122.0,
                        153.0,
                        50.0,
                        21.0
                    ]
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
                        101.25,
                        127.0,
                        50.0,
                        21.0
                    ]
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
                        74.0,
                        102.0,
                        50.0,
                        21.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        39.0,
                        182.0,
                        102.0,
                        23.0
                    ],
                    "text": "pak xyz 0 0. 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        188.0,
                        184.0,
                        100.0,
                        23.0
                    ],
                    "text": "prepend mode"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "items": [
                        "spatGrisCube",
                        ",",
                        "spatGrisDome",
                        ",",
                        "IEM/SPARTA",
                        ",",
                        "ICSTXYZ",
                        ",",
                        "ICSTAED",
                        ",",
                        "SpatXYZ",
                        ",",
                        "SpatAED"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        188.0,
                        157.0,
                        100.0,
                        23.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        49.5,
                        342.0,
                        78.0,
                        23.0
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        49.5,
                        371.0,
                        287.0,
                        48.0
                    ],
                    "text": "/spat/serv car 1 -0.05312 0.2158 -0.249 0. 0."
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        50.0,
                        255.0,
                        129.0,
                        23.0
                    ],
                    "text": "grainflow.spat.format"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-17",
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
                        "obj-18",
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
                        "obj-12",
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
                        "obj-12",
                        3
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
                        "obj-12",
                        4
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
                        "obj-8",
                        0
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
                        "obj-18",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
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
                        "obj-7",
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
                        "obj-10",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-2987",
        "dependency_cache": [
            {
                "name": "_grainflow.xyz2aed.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/_private",
                "patcherrelativepath": "../../patchers/_private",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "grainflow.spat.format.maxpat",
                "bootpath": "~/Documents/Max 9/Packages/Grainflow/patchers/spat",
                "patcherrelativepath": "../../patchers/spat",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}