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
            219.0,
            317.0,
            1291.0,
            463.0
        ],
        "bglocked": 0,
        "openinpresentation": 1,
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
        "statusbarvisible": 1,
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
                    "fontface": 0,
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-113",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1792.0,
                        191.0,
                        68.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [
                        316.0,
                        55.0,
                        36.0,
                        28.0
                    ],
                    "text": "Pitch Snap",
                    "textcolor": [
                        0.694117647058824,
                        0.694117647058824,
                        0.694117647058824,
                        1.0
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "id": "obj-110",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1746.0,
                        191.0,
                        40.0,
                        13.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        316.0,
                        85.6690788269043,
                        40.0,
                        13.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "pitchQuant",
                            "parameter_mmax": 4.0,
                            "parameter_shortname": "pitchQuant",
                            "parameter_type": 0,
                            "parameter_units": "st",
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "pitchQuant"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1882.0,
                        285.029999,
                        29.0,
                        22.0
                    ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        823.0,
                        230.02999900000003,
                        44.0,
                        22.0
                    ],
                    "text": "pow 3."
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        823.0,
                        201.0,
                        98.0,
                        22.0
                    ],
                    "text": "scale -5. 5. -1. 1."
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-101",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        365.5,
                        2.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        387.0,
                        0.0,
                        36.0,
                        17.0
                    ],
                    "text": " Jitter",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        2048.0,
                        95.5,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1882.0,
                        178.5,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1878.0,
                        133.5,
                        90.0,
                        22.0
                    ],
                    "text": "scale 0. 5. 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1874.5,
                        57.5,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1874.5,
                        84.97000100000002,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "comment": "\"timing jitter from 0-1\"",
                    "id": "obj-95",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1874.5,
                        13.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2266.25,
                        221.55999799999998,
                        97.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 1. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2266.25,
                        248.31427,
                        63.0,
                        22.0
                    ],
                    "text": "density $1"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        2157.5,
                        213.19973149999998,
                        40.0,
                        22.0
                    ],
                    "text": "* 500."
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2151.25,
                        241.02999899999998,
                        91.0,
                        22.0
                    ],
                    "text": "travRandom $1"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2021.25,
                        212.02999899999998,
                        97.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 0. 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2021.25,
                        254.02999899999998,
                        103.0,
                        22.0
                    ],
                    "text": "spaceRandom $1"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1882.0,
                        227.02999899999998,
                        102.0,
                        36.0
                    ],
                    "text": "windowOffsetRandom $1"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        2026.0,
                        27.0,
                        41.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        365.5,
                        55.0,
                        61.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "timing jitter",
                            "parameter_mmax": 100.0,
                            "parameter_shortname": "timing jitter",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "timing jitter"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        255.0,
                        13.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        184.0,
                        0.0,
                        35.0,
                        17.0
                    ],
                    "text": "Delay",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        1425.0,
                        151.470001,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1351.5,
                        159.470001,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1473.5,
                        135.529999,
                        90.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 1. 0."
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1451.5,
                        24.0,
                        41.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        214.0,
                        55.0,
                        41.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                12.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "amp",
                            "parameter_mmax": 12.0,
                            "parameter_shortname": "amp",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "amp"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1611.5,
                        138.5,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        1733.5,
                        91.97000100000002,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1733.5,
                        64.97000100000002,
                        87.0,
                        22.0
                    ],
                    "text": "scale 0 1 -5. 5."
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1711.5,
                        2.5,
                        41.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        276.0,
                        55.0,
                        41.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "pitch",
                            "parameter_mmax": 12.0,
                            "parameter_mmin": -12.0,
                            "parameter_shortname": "pitch",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "pitch"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        206.5,
                        53.0,
                        22.0
                    ],
                    "text": "round 1."
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        235.0,
                        109.0,
                        22.0
                    ],
                    "text": "expr pow(2\\,$f1/12)"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        172.5,
                        111.0,
                        22.0
                    ],
                    "text": "scale -5. 5. -12. 12."
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        259.0,
                        46.0,
                        22.0
                    ],
                    "text": "rate $1"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        63.47000099999997,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1611.5,
                        87.47000099999997,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "comment": "\"pitch from -5 to 5\"",
                    "id": "obj-61",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1611.5,
                        23.029998999999975,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1350.5,
                        220.5,
                        90.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 1. 0."
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1351.5,
                        189.0,
                        53.0,
                        22.0
                    ],
                    "text": "clip 0. 5."
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        296.0,
                        1.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        323.0,
                        0.0,
                        33.0,
                        17.0
                    ],
                    "text": "Pitch ",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        240.0,
                        -2.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        259.0,
                        0.0,
                        29.0,
                        17.0
                    ],
                    "text": "Amp",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        166.0,
                        3.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        125.0,
                        0.0,
                        26.0,
                        17.0
                    ],
                    "text": "Size",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        63.0,
                        5.0,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        53.518768310546875,
                        0.0,
                        29.0,
                        17.0
                    ],
                    "text": " Rate",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1350.5,
                        259.0,
                        49.0,
                        22.0
                    ],
                    "text": "amp $1"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1351.5,
                        96.5,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1351.5,
                        123.5,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "comment": "\"amplitude atinuation from 0-1\"",
                    "id": "obj-75",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1351.5,
                        21.5,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1111.5,
                        264.529999,
                        45.0,
                        22.0
                    ],
                    "text": "trav $1"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1111.5,
                        229.029999,
                        107.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 0. 5000"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        1274.5,
                        161.5,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1252.5,
                        72.029999,
                        41.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        150.0,
                        55.0,
                        41.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "delay",
                            "parameter_mmax": 5000.0,
                            "parameter_shortname": "delay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "delay"
                }
            },
            {
                "box": {
                    "comment": "\"Delay from 0 to 1\"",
                    "id": "obj-47",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1111.5,
                        22.529999000000004,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1111.5,
                        187.529999,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1111.5,
                        72.029999,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        1111.5,
                        119.529999,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        0.75,
                        494.0,
                        29.5,
                        22.0
                    ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        823.0,
                        263.50000000000006,
                        107.0,
                        22.0
                    ],
                    "text": "scale -1. 1. 0. 500."
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        980.0,
                        126.529999,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        980.0,
                        99.529999,
                        83.0,
                        22.0
                    ],
                    "text": "scale 0 1 0. 5."
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        958.0,
                        33.05999800000001,
                        80.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        61.0,
                        55.0,
                        80.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                250.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "grain duration",
                            "parameter_mmax": 500.0,
                            "parameter_shortname": "grain duration",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "grain duration"
                }
            },
            {
                "box": {
                    "comment": "\"grain length in cv from -5 to 5\"",
                    "id": "obj-37",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        823.0,
                        33.5,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        823.0,
                        171.5,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        823.0,
                        92.0,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        823.0,
                        139.5,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        478.0,
                        269.0,
                        101.0,
                        22.0
                    ],
                    "text": "scale -5. 5. 0. 50."
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "float"
                    ],
                    "patching_rect": [
                        614.0,
                        139.5,
                        29.5,
                        22.0
                    ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        614.0,
                        112.5,
                        91.0,
                        22.0
                    ],
                    "text": "scale 0. 1 -5. 5."
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        592.0,
                        46.029999000000004,
                        41.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        9.0,
                        55.0,
                        41.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                25.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "gran rate",
                            "parameter_mmax": 50.0,
                            "parameter_shortname": "gran rate",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.7
                    ],
                    "varname": "gran rate"
                }
            },
            {
                "box": {
                    "comment": "\"grain rate in cv from -5 to 5\"",
                    "id": "obj-26",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        478.0,
                        63.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        478.0,
                        232.0,
                        29.5,
                        22.0
                    ],
                    "text": "+ 0."
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        478.0,
                        116.5,
                        125.0,
                        22.0
                    ],
                    "text": "r #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        124.5,
                        87.5,
                        127.0,
                        22.0
                    ],
                    "text": "s #0_framebang"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        124.5,
                        50.5,
                        113.0,
                        22.0
                    ],
                    "text": "metro 10 @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        478.0,
                        164.0,
                        64.0,
                        22.0
                    ],
                    "text": "snapshot~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [
                        "signal",
                        "bang",
                        "int",
                        "float",
                        "",
                        "list"
                    ],
                    "patching_rect": [
                        29.0,
                        178.970001,
                        71.5,
                        22.0
                    ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "float"
                    ],
                    "patching_rect": [
                        478.0,
                        315.0,
                        210.0,
                        22.0
                    ],
                    "text": "grainflow.util.rateSizePhasor~ 25 5 10"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "multichannelsignal"
                    ],
                    "patching_rect": [
                        151.75,
                        480.0,
                        92.0,
                        22.0
                    ],
                    "text": "mc.mixdown~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [
                        "multichannelsignal",
                        ""
                    ],
                    "patching_rect": [
                        151.75,
                        443.0,
                        135.0,
                        22.0
                    ],
                    "text": "grainFlow.live~ 6000 25"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        59.5,
                        139.5,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        41.0,
                        17.0
                    ],
                    "text": "Signal",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        56.18109099999998,
                        494.0,
                        32.5,
                        22.0
                    ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        56.18109099999998,
                        564.754272,
                        204.0,
                        22.0
                    ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "activebgcolor": [
                        0.572549,
                        0.615686,
                        0.658824,
                        0.0
                    ],
                    "activebgoncolor": [
                        0.278431,
                        0.839216,
                        1.0,
                        1.0
                    ],
                    "activetextcolor": [
                        1.0,
                        1.0,
                        1.0,
                        0.57
                    ],
                    "activetextoncolor": [
                        0.0,
                        0.019608,
                        0.078431,
                        1.0
                    ],
                    "bgcolor": [
                        0.101961,
                        0.101961,
                        0.101961,
                        0.78
                    ],
                    "bordercolor": [
                        0.0,
                        0.019608,
                        0.078431,
                        0.37
                    ],
                    "id": "obj-12",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        0.75,
                        443.0,
                        40.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        81.51876831054688,
                        19.0,
                        52.0,
                        14.764644622802734
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_defer": 1,
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mute",
                            "parameter_mmax": 1,
                            "parameter_shortname": "Mute",
                            "parameter_type": 2
                        }
                    },
                    "text": "bypass",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "texton": "bypass",
                    "varname": "bypass"
                }
            },
            {
                "box": {
                    "comment": "signal output",
                    "id": "obj-19",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        56.18109099999998,
                        610.754272,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "signal input",
                    "id": "obj-3",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        29.0,
                        133.0,
                        25.0,
                        25.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        94.65625,
                        618.754272,
                        41.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        169.5,
                        41.0,
                        17.0
                    ],
                    "text": "Signal",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        29.0,
                        104.5,
                        59.5,
                        22.0
                    ],
                    "restore": {
                        "amp": [
                            12.0
                        ],
                        "bypass": [
                            0.0
                        ],
                        "delay": [
                            236.22047244094458
                        ],
                        "grain duration": [
                            64.96062992125987
                        ],
                        "gran rate": [
                            50.0
                        ],
                        "pitch": [
                            0.0
                        ],
                        "pitchQuant": [
                            1.0
                        ],
                        "timing jitter": [
                            23.622047244094524
                        ]
                    },
                    "text": "autopattr",
                    "varname": "u479003265"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Bold Regular",
                    "fontsize": 9.0,
                    "id": "obj-13",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        29.0,
                        40.0,
                        60.0,
                        28.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        19.0,
                        80.51876831054688,
                        17.0
                    ],
                    "text": "GRAINFLOWLIVE",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "background": 1,
                    "bgcolor": [
                        0.137255,
                        0.145098,
                        0.160784,
                        0.65
                    ],
                    "id": "obj-130",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        29.0,
                        22.711639,
                        37.0,
                        5.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        37.0,
                        436.0,
                        130.5
                    ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "background": 1,
                    "bgcolor": [
                        0.367404,
                        0.389405,
                        0.430238,
                        1.0
                    ],
                    "id": "obj-131",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        300.33718899999997,
                        531.1697325,
                        507.9999999999999,
                        133.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        17.0,
                        436.0,
                        150.3381576538086
                    ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "id": "obj-135",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        116.079285,
                        22.711639,
                        37.0,
                        5.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        436.0,
                        196.470001
                    ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "border": 0,
                    "embedstate": [
                        [
                            "fps",
                            12
                        ],
                        [
                            "showTriangles",
                            0
                        ],
                        [
                            "dotColor",
                            0.8,
                            0.8,
                            0.8,
                            1
                        ],
                        [
                            "bgColor",
                            1,
                            1,
                            1,
                            0
                        ],
                        [
                            "selection",
                            0,
                            1
                        ],
                        [
                            "maxBufferDrawSamples",
                            250
                        ],
                        [
                            "triangleColor",
                            1,
                            1,
                            1,
                            1
                        ],
                        [
                            "waveformColor",
                            0.427,
                            0.843,
                            1,
                            1
                        ],
                        [
                            "dotVJitter",
                            0
                        ],
                        [
                            "dotScale",
                            5
                        ],
                        [
                            "triangleOutColor",
                            1,
                            1,
                            1,
                            1
                        ],
                        [
                            "mode",
                            0
                        ],
                        [
                            "selectColor",
                            1,
                            1,
                            1,
                            0.75
                        ],
                        [
                            "dotColorSecondary",
                            0.8,
                            0.8,
                            0.8,
                            0.5
                        ],
                        [
                            "buffername",
                            "1131168_flow_1"
                        ]
                    ],
                    "filename": "grainflow.waveform~",
                    "id": "obj-55",
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        341.0,
                        574.339465,
                        429.5,
                        69.15198504352946
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        104.3309211730957,
                        434.0,
                        63.1690788269043
                    ]
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
                        "obj-55",
                        0
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
                        "obj-11",
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
                        "obj-99",
                        1
                    ],
                    "source": [
                        "obj-100",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-99",
                        0
                    ],
                    "source": [
                        "obj-100",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-103",
                        0
                    ],
                    "source": [
                        "obj-102",
                        0
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
                        "obj-103",
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
                        "obj-109",
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
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-64",
                        1
                    ],
                    "source": [
                        "obj-110",
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
                    "order": 0,
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-41",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
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
                        "obj-32",
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
                        "obj-25",
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
                        "obj-18",
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
                        "obj-11",
                        1
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
                        "obj-16",
                        0
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
                        "obj-30",
                        0
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
                        "obj-16",
                        0
                    ],
                    "source": [
                        "obj-26",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-34",
                        0
                    ],
                    "source": [
                        "obj-27",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-25",
                        1
                    ],
                    "source": [
                        "obj-28",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-25",
                        0
                    ],
                    "source": [
                        "obj-28",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-53",
                        0
                    ],
                    "source": [
                        "obj-29",
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
                        "obj-3",
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
                        "obj-30",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        1
                    ],
                    "midpoints": [
                        832.5,
                        299.75,
                        678.5,
                        299.75
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
                        "obj-29",
                        1
                    ],
                    "source": [
                        "obj-32",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
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
                        "obj-38",
                        1
                    ],
                    "source": [
                        "obj-33",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-38",
                        0
                    ],
                    "source": [
                        "obj-33",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-28",
                        0
                    ],
                    "source": [
                        "obj-34",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-33",
                        0
                    ],
                    "source": [
                        "obj-35",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-35",
                        0
                    ],
                    "source": [
                        "obj-36",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-40",
                        0
                    ],
                    "source": [
                        "obj-37",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-102",
                        0
                    ],
                    "source": [
                        "obj-38",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-40",
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
                    "destination": [
                        "obj-1",
                        1
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
                        "obj-38",
                        0
                    ],
                    "source": [
                        "obj-40",
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
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-52",
                        0
                    ],
                    "source": [
                        "obj-42",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-100",
                        0
                    ],
                    "source": [
                        "obj-43",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        1
                    ],
                    "source": [
                        "obj-44",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-44",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-46",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-50",
                        0
                    ],
                    "source": [
                        "obj-47",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-42",
                        0
                    ],
                    "source": [
                        "obj-48",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-50",
                        0
                    ],
                    "source": [
                        "obj-49",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-50",
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
                        "obj-52",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-54",
                        0
                    ],
                    "source": [
                        "obj-53",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-86",
                        0
                    ],
                    "source": [
                        "obj-54",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-64",
                        0
                    ],
                    "source": [
                        "obj-56",
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
                        "obj-58",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-60",
                        0
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        0
                    ],
                    "source": [
                        "obj-60",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-60",
                        0
                    ],
                    "source": [
                        "obj-61",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-58",
                        0
                    ],
                    "source": [
                        "obj-63",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        0
                    ],
                    "source": [
                        "obj-64",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        1
                    ],
                    "source": [
                        "obj-67",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-70",
                        0
                    ],
                    "source": [
                        "obj-67",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-67",
                        0
                    ],
                    "source": [
                        "obj-68",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-68",
                        0
                    ],
                    "source": [
                        "obj-69",
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
                    "midpoints": [
                        38.5,
                        319.4850005,
                        161.25,
                        319.4850005
                    ],
                    "order": 1,
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-11",
                        2
                    ],
                    "midpoints": [
                        38.5,
                        226.36213650000002,
                        250.68109099999998,
                        226.36213650000002
                    ],
                    "order": 0,
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-56",
                        0
                    ],
                    "source": [
                        "obj-70",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-109",
                        0
                    ],
                    "source": [
                        "obj-71",
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
                        "obj-75",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-109",
                        0
                    ],
                    "source": [
                        "obj-78",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-78",
                        0
                    ],
                    "source": [
                        "obj-79",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-109",
                        0
                    ],
                    "source": [
                        "obj-80",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-80",
                        0
                    ],
                    "source": [
                        "obj-81",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-109",
                        0
                    ],
                    "source": [
                        "obj-82",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-29",
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
                        "obj-83",
                        0
                    ],
                    "source": [
                        "obj-84",
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
                        "obj-86",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-82",
                        0
                    ],
                    "source": [
                        "obj-92",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-97",
                        0
                    ],
                    "source": [
                        "obj-95",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-97",
                        0
                    ],
                    "source": [
                        "obj-96",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-98",
                        0
                    ],
                    "source": [
                        "obj-97",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-99",
                        0
                    ],
                    "source": [
                        "obj-98",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-71",
                        0
                    ],
                    "order": 3,
                    "source": [
                        "obj-99",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-79",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "obj-99",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-81",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-99",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-92",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-99",
                        0
                    ]
                }
            }
        ],
        "bgcolor": [
            0.164705882352941,
            0.164705882352941,
            0.164705882352941,
            0.96
        ],
        "editing_bgcolor": [
            0.298039215686275,
            0.298039215686275,
            0.298039215686275,
            1.0
        ]
    }
}