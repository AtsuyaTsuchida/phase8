{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 5,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      40,
      50,
      1250,
      820
    ],
    "default_fontsize": 12,
    "default_fontname": "Arial",
    "bgcolor": [
      0.065,
      0.08,
      0.08,
      1
    ],
    "editing_bgcolor": [
      0.2,
      0.23,
      0.22,
      1
    ],
    "openinpresentation": 1,
    "bglocked": 1,
    "toolbarvisible": 0,
    "statusbarvisible": 0,
    "boxes": [
      {
        "box": {
          "id": "o1",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            900,
            250,
            22
          ],
          "text": "js p8_control.js #0",
          "varname": "controller"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            1100,
            400,
            22
          ],
          "text": "poly~ p8_engine 1 @up 2 @resampling 1",
          "varname": "engine"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            1040,
            250,
            22
          ],
          "text": "buffer~ #0-events 1000 5",
          "varname": "event_buffer"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "newobj",
          "patching_rect": [
            350,
            1040,
            200,
            22
          ],
          "text": "buffer~ #0-sample",
          "varname": "sample_buffer"
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "message",
          "patching_rect": [
            350,
            1070,
            100,
            22
          ],
          "text": "sampledone"
        }
      },
      {
        "box": {
          "id": "o6",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            950,
            200,
            22
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "o7",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            980,
            200,
            22
          ],
          "text": "delay 200"
        }
      },
      {
        "box": {
          "id": "o8",
          "maxclass": "message",
          "patching_rect": [
            160,
            980,
            50,
            22
          ],
          "text": "init"
        }
      },
      {
        "box": {
          "id": "o9",
          "maxclass": "comment",
          "patching_rect": [
            24,
            15,
            280,
            42
          ],
          "varname": "label8",
          "presentation": 1,
          "presentation_rect": [
            24,
            15,
            280,
            42
          ],
          "text": "PHASE / 8",
          "fontsize": 28,
          "fontname": "Arial",
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o10",
          "maxclass": "comment",
          "patching_rect": [
            310,
            29,
            410,
            25
          ],
          "varname": "label9",
          "presentation": 1,
          "presentation_rect": [
            310,
            29,
            410,
            25
          ],
          "text": "FREE-TIME PERCUSSION SYSTEM",
          "fontsize": 12,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o11",
          "maxclass": "comment",
          "patching_rect": [
            950,
            24,
            270,
            28
          ],
          "varname": "scene_title",
          "presentation": 1,
          "presentation_rect": [
            950,
            24,
            270,
            28
          ],
          "text": "Shards",
          "fontsize": 18,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o12",
          "maxclass": "textbutton",
          "patching_rect": [
            24,
            76,
            68,
            27
          ],
          "varname": "audio",
          "presentation": 1,
          "presentation_rect": [
            24,
            76,
            68,
            27
          ],
          "text": "AUDIO",
          "texton": "AUDIO",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o13",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1500,
            180,
            22
          ],
          "text": "prepend audio"
        }
      },
      {
        "box": {
          "id": "o14",
          "maxclass": "textbutton",
          "patching_rect": [
            101,
            76,
            68,
            27
          ],
          "varname": "play",
          "presentation": 1,
          "presentation_rect": [
            101,
            76,
            68,
            27
          ],
          "text": "PLAY",
          "texton": "PLAY",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o15",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1500,
            180,
            22
          ],
          "text": "prepend play"
        }
      },
      {
        "box": {
          "id": "o16",
          "maxclass": "textbutton",
          "patching_rect": [
            178,
            76,
            68,
            27
          ],
          "varname": "reset",
          "presentation": 1,
          "presentation_rect": [
            178,
            76,
            68,
            27
          ],
          "text": "RESET",
          "texton": "RESET",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o17",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1500,
            180,
            22
          ],
          "text": "prepend reset"
        }
      },
      {
        "box": {
          "id": "o18",
          "maxclass": "comment",
          "patching_rect": [
            267,
            57,
            100,
            16
          ],
          "varname": "label17",
          "presentation": 1,
          "presentation_rect": [
            267,
            57,
            100,
            16
          ],
          "text": "TIME",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o19",
          "maxclass": "umenu",
          "patching_rect": [
            267,
            76,
            100,
            23
          ],
          "varname": "mode",
          "presentation": 1,
          "presentation_rect": [
            267,
            76,
            100,
            23
          ],
          "items": [
            "Free Time",
            ",",
            "Grid"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o20",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1525,
            180,
            22
          ],
          "text": "prepend mode"
        }
      },
      {
        "box": {
          "id": "o21",
          "maxclass": "comment",
          "patching_rect": [
            380,
            57,
            68,
            16
          ],
          "varname": "label20",
          "presentation": 1,
          "presentation_rect": [
            380,
            57,
            68,
            16
          ],
          "text": "SPEED",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o22",
          "maxclass": "flonum",
          "patching_rect": [
            380,
            76,
            62,
            23
          ],
          "varname": "speed",
          "presentation": 1,
          "presentation_rect": [
            380,
            76,
            62,
            23
          ],
          "minimum": 0.25,
          "maximum": 4,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o23",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1525,
            180,
            22
          ],
          "text": "prepend speed"
        }
      },
      {
        "box": {
          "id": "o24",
          "maxclass": "comment",
          "patching_rect": [
            455,
            57,
            68,
            16
          ],
          "varname": "label23",
          "presentation": 1,
          "presentation_rect": [
            455,
            57,
            68,
            16
          ],
          "text": "BPM / GRID",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o25",
          "maxclass": "flonum",
          "patching_rect": [
            455,
            76,
            62,
            23
          ],
          "varname": "bpm",
          "presentation": 1,
          "presentation_rect": [
            455,
            76,
            62,
            23
          ],
          "minimum": 20,
          "maximum": 300,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o26",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1550,
            180,
            22
          ],
          "text": "prepend bpm"
        }
      },
      {
        "box": {
          "id": "o27",
          "maxclass": "comment",
          "patching_rect": [
            530,
            57,
            80,
            16
          ],
          "varname": "label26",
          "presentation": 1,
          "presentation_rect": [
            530,
            57,
            80,
            16
          ],
          "text": "WINDOW / BARS",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o28",
          "maxclass": "umenu",
          "patching_rect": [
            530,
            76,
            80,
            23
          ],
          "varname": "duration",
          "presentation": 1,
          "presentation_rect": [
            530,
            76,
            80,
            23
          ],
          "items": [
            "2",
            ",",
            "4",
            ",",
            "8",
            ",",
            "16"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o29",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1550,
            180,
            22
          ],
          "text": "prepend duration"
        }
      },
      {
        "box": {
          "id": "o30",
          "maxclass": "comment",
          "patching_rect": [
            625,
            57,
            160,
            16
          ],
          "varname": "label29",
          "presentation": 1,
          "presentation_rect": [
            625,
            57,
            160,
            16
          ],
          "text": "SCENE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o31",
          "maxclass": "umenu",
          "patching_rect": [
            625,
            76,
            160,
            23
          ],
          "varname": "scene",
          "presentation": 1,
          "presentation_rect": [
            625,
            76,
            160,
            23
          ],
          "items": [
            "01 Shards",
            ",",
            "02 Elastic Matter",
            ",",
            "03 Quiet Fractures",
            ",",
            "04 Wire Rain",
            ",",
            "05 Low Impacts",
            ",",
            "06 Broken Membrane",
            ",",
            "07 Swarm",
            ",",
            "08 Glass Dust",
            ",",
            "09 Bent Grid",
            ",",
            "10 Tidal Metal"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o32",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1575,
            180,
            22
          ],
          "text": "prepend scene"
        }
      },
      {
        "box": {
          "id": "o33",
          "maxclass": "textbutton",
          "patching_rect": [
            800,
            76,
            67,
            27
          ],
          "varname": "save",
          "presentation": 1,
          "presentation_rect": [
            800,
            76,
            67,
            27
          ],
          "text": "SAVE",
          "texton": "SAVE",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o34",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            1575,
            180,
            22
          ],
          "text": "prepend save"
        }
      },
      {
        "box": {
          "id": "o35",
          "maxclass": "textbutton",
          "patching_rect": [
            874,
            76,
            67,
            27
          ],
          "varname": "load",
          "presentation": 1,
          "presentation_rect": [
            874,
            76,
            67,
            27
          ],
          "text": "LOAD",
          "texton": "LOAD",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o36",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            1575,
            180,
            22
          ],
          "text": "prepend load"
        }
      },
      {
        "box": {
          "id": "o37",
          "maxclass": "textbutton",
          "patching_rect": [
            954,
            76,
            79,
            27
          ],
          "varname": "recordfile",
          "presentation": 1,
          "presentation_rect": [
            954,
            76,
            79,
            27
          ],
          "text": "REC FILE",
          "texton": "REC FILE",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o38",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1600,
            180,
            22
          ],
          "text": "prepend recordfile"
        }
      },
      {
        "box": {
          "id": "o39",
          "maxclass": "textbutton",
          "patching_rect": [
            1041,
            76,
            63,
            27
          ],
          "varname": "record",
          "presentation": 1,
          "presentation_rect": [
            1041,
            76,
            63,
            27
          ],
          "text": "REC",
          "texton": "REC",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o40",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            1600,
            180,
            22
          ],
          "text": "prepend record"
        }
      },
      {
        "box": {
          "id": "o41",
          "maxclass": "textbutton",
          "patching_rect": [
            1120,
            76,
            104,
            27
          ],
          "varname": "panic",
          "presentation": 1,
          "presentation_rect": [
            1120,
            76,
            104,
            27
          ],
          "text": "PANIC",
          "texton": "PANIC",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o42",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            1600,
            180,
            22
          ],
          "text": "prepend panic"
        }
      },
      {
        "box": {
          "id": "o43",
          "maxclass": "newobj",
          "patching_rect": [
            700,
            1320,
            200,
            22
          ],
          "text": "savedialog JSON"
        }
      },
      {
        "box": {
          "id": "o44",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1625,
            180,
            22
          ],
          "text": "prepend saved"
        }
      },
      {
        "box": {
          "id": "o45",
          "maxclass": "newobj",
          "patching_rect": [
            700,
            1340,
            200,
            22
          ],
          "text": "opendialog JSON"
        }
      },
      {
        "box": {
          "id": "o46",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            1625,
            180,
            22
          ],
          "text": "prepend loadedfile"
        }
      },
      {
        "box": {
          "id": "o47",
          "maxclass": "newobj",
          "patching_rect": [
            700,
            1360,
            200,
            22
          ],
          "text": "savedialog WAVE"
        }
      },
      {
        "box": {
          "id": "o48",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            1625,
            180,
            22
          ],
          "text": "prepend recordfile"
        }
      },
      {
        "box": {
          "id": "o49",
          "maxclass": "comment",
          "patching_rect": [
            24,
            123,
            185,
            22
          ],
          "varname": "label48",
          "presentation": 1,
          "presentation_rect": [
            24,
            123,
            185,
            22
          ],
          "text": "DENSITY",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o50",
          "maxclass": "dial",
          "patching_rect": [
            24,
            151,
            62,
            62
          ],
          "varname": "density",
          "presentation": 1,
          "presentation_rect": [
            24,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o51",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1650,
            180,
            22
          ],
          "text": "prepend macro 0"
        }
      },
      {
        "box": {
          "id": "o52",
          "maxclass": "flonum",
          "patching_rect": [
            100,
            155,
            85,
            24
          ],
          "varname": "read_density",
          "presentation": 1,
          "presentation_rect": [
            100,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o53",
          "maxclass": "comment",
          "patching_rect": [
            100,
            186,
            122,
            24
          ],
          "varname": "label52",
          "presentation": 1,
          "presentation_rect": [
            100,
            186,
            122,
            24
          ],
          "text": "events / silence",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o54",
          "maxclass": "comment",
          "patching_rect": [
            225,
            123,
            185,
            22
          ],
          "varname": "label53",
          "presentation": 1,
          "presentation_rect": [
            225,
            123,
            185,
            22
          ],
          "text": "TIME WARP",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o55",
          "maxclass": "dial",
          "patching_rect": [
            225,
            151,
            62,
            62
          ],
          "varname": "warp",
          "presentation": 1,
          "presentation_rect": [
            225,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o56",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            1675,
            180,
            22
          ],
          "text": "prepend macro 1"
        }
      },
      {
        "box": {
          "id": "o57",
          "maxclass": "flonum",
          "patching_rect": [
            301,
            155,
            85,
            24
          ],
          "varname": "read_warp",
          "presentation": 1,
          "presentation_rect": [
            301,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o58",
          "maxclass": "comment",
          "patching_rect": [
            301,
            186,
            122,
            24
          ],
          "varname": "label57",
          "presentation": 1,
          "presentation_rect": [
            301,
            186,
            122,
            24
          ],
          "text": "compress / stretch",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o59",
          "maxclass": "comment",
          "patching_rect": [
            426,
            123,
            185,
            22
          ],
          "varname": "label58",
          "presentation": 1,
          "presentation_rect": [
            426,
            123,
            185,
            22
          ],
          "text": "FRAGMENT",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o60",
          "maxclass": "dial",
          "patching_rect": [
            426,
            151,
            62,
            62
          ],
          "varname": "fragment",
          "presentation": 1,
          "presentation_rect": [
            426,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o61",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1700,
            180,
            22
          ],
          "text": "prepend macro 2"
        }
      },
      {
        "box": {
          "id": "o62",
          "maxclass": "flonum",
          "patching_rect": [
            502,
            155,
            85,
            24
          ],
          "varname": "read_fragment",
          "presentation": 1,
          "presentation_rect": [
            502,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o63",
          "maxclass": "comment",
          "patching_rect": [
            502,
            186,
            122,
            24
          ],
          "varname": "label62",
          "presentation": 1,
          "presentation_rect": [
            502,
            186,
            122,
            24
          ],
          "text": "clusters / shards",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o64",
          "maxclass": "comment",
          "patching_rect": [
            627,
            123,
            185,
            22
          ],
          "varname": "label63",
          "presentation": 1,
          "presentation_rect": [
            627,
            123,
            185,
            22
          ],
          "text": "COUPLING",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o65",
          "maxclass": "dial",
          "patching_rect": [
            627,
            151,
            62,
            62
          ],
          "varname": "coupling",
          "presentation": 1,
          "presentation_rect": [
            627,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o66",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            1700,
            180,
            22
          ],
          "text": "prepend macro 3"
        }
      },
      {
        "box": {
          "id": "o67",
          "maxclass": "flonum",
          "patching_rect": [
            703,
            155,
            85,
            24
          ],
          "varname": "read_coupling",
          "presentation": 1,
          "presentation_rect": [
            703,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o68",
          "maxclass": "comment",
          "patching_rect": [
            703,
            186,
            122,
            24
          ],
          "varname": "label67",
          "presentation": 1,
          "presentation_rect": [
            703,
            186,
            122,
            24
          ],
          "text": "voices influence voices",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o69",
          "maxclass": "comment",
          "patching_rect": [
            828,
            123,
            185,
            22
          ],
          "varname": "label68",
          "presentation": 1,
          "presentation_rect": [
            828,
            123,
            185,
            22
          ],
          "text": "MATERIAL",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o70",
          "maxclass": "dial",
          "patching_rect": [
            828,
            151,
            62,
            62
          ],
          "varname": "material",
          "presentation": 1,
          "presentation_rect": [
            828,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o71",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1725,
            180,
            22
          ],
          "text": "prepend macro 4"
        }
      },
      {
        "box": {
          "id": "o72",
          "maxclass": "flonum",
          "patching_rect": [
            904,
            155,
            85,
            24
          ],
          "varname": "read_material",
          "presentation": 1,
          "presentation_rect": [
            904,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o73",
          "maxclass": "comment",
          "patching_rect": [
            904,
            186,
            122,
            24
          ],
          "varname": "label72",
          "presentation": 1,
          "presentation_rect": [
            904,
            186,
            122,
            24
          ],
          "text": "membrane / metal",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o74",
          "maxclass": "comment",
          "patching_rect": [
            1029,
            123,
            185,
            22
          ],
          "varname": "label73",
          "presentation": 1,
          "presentation_rect": [
            1029,
            123,
            185,
            22
          ],
          "text": "SPACE",
          "fontsize": 13,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o75",
          "maxclass": "dial",
          "patching_rect": [
            1029,
            151,
            62,
            62
          ],
          "varname": "space",
          "presentation": 1,
          "presentation_rect": [
            1029,
            151,
            62,
            62
          ],
          "size": 101,
          "floatoutput": 1,
          "needlecolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "outlinecolor": [
            0.22,
            0.3,
            0.26,
            1
          ],
          "bgcolor": [
            0.065,
            0.08,
            0.08,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o76",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            1750,
            180,
            22
          ],
          "text": "prepend macro 5"
        }
      },
      {
        "box": {
          "id": "o77",
          "maxclass": "flonum",
          "patching_rect": [
            1105,
            155,
            85,
            24
          ],
          "varname": "read_space",
          "presentation": 1,
          "presentation_rect": [
            1105,
            155,
            85,
            24
          ],
          "minimum": 0,
          "maximum": 100,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o78",
          "maxclass": "comment",
          "patching_rect": [
            1105,
            186,
            122,
            24
          ],
          "varname": "label77",
          "presentation": 1,
          "presentation_rect": [
            1105,
            186,
            122,
            24
          ],
          "text": "echo / resonance",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o79",
          "maxclass": "comment",
          "patching_rect": [
            24,
            228,
            790,
            19
          ],
          "varname": "label78",
          "presentation": 1,
          "presentation_rect": [
            24,
            228,
            790,
            19
          ],
          "text": "EVENT FIELD     /     SELECT A VOICE TO EDIT",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o80",
          "maxclass": "comment",
          "patching_rect": [
            958,
            228,
            245,
            19
          ],
          "varname": "label79",
          "presentation": 1,
          "presentation_rect": [
            958,
            228,
            245,
            19
          ],
          "text": "MUTE     SOLO            LEVEL",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o81",
          "maxclass": "jsui",
          "patching_rect": [
            24,
            252,
            910,
            258
          ],
          "varname": "events",
          "presentation": 1,
          "presentation_rect": [
            24,
            252,
            910,
            258
          ],
          "filename": "p8_display.js",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "o82",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            252.0,
            34,
            27
          ],
          "varname": "mute0",
          "presentation": 1,
          "presentation_rect": [
            955,
            252.0,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o83",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1775,
            180,
            22
          ],
          "text": "prepend mute 0"
        }
      },
      {
        "box": {
          "id": "o84",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            252.0,
            34,
            27
          ],
          "varname": "solo0",
          "presentation": 1,
          "presentation_rect": [
            997,
            252.0,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o85",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1800,
            180,
            22
          ],
          "text": "prepend solo 0"
        }
      },
      {
        "box": {
          "id": "o86",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            255.0,
            169,
            20
          ],
          "varname": "level0",
          "presentation": 1,
          "presentation_rect": [
            1043,
            255.0,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o87",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1800,
            180,
            22
          ],
          "text": "prepend level 0"
        }
      },
      {
        "box": {
          "id": "o88",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            281.5,
            34,
            27
          ],
          "varname": "mute1",
          "presentation": 1,
          "presentation_rect": [
            955,
            281.5,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o89",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1800,
            180,
            22
          ],
          "text": "prepend mute 1"
        }
      },
      {
        "box": {
          "id": "o90",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            281.5,
            34,
            27
          ],
          "varname": "solo1",
          "presentation": 1,
          "presentation_rect": [
            997,
            281.5,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o91",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1825,
            180,
            22
          ],
          "text": "prepend solo 1"
        }
      },
      {
        "box": {
          "id": "o92",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            284.5,
            169,
            20
          ],
          "varname": "level1",
          "presentation": 1,
          "presentation_rect": [
            1043,
            284.5,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o93",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1825,
            180,
            22
          ],
          "text": "prepend level 1"
        }
      },
      {
        "box": {
          "id": "o94",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            311.0,
            34,
            27
          ],
          "varname": "mute2",
          "presentation": 1,
          "presentation_rect": [
            955,
            311.0,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o95",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1825,
            180,
            22
          ],
          "text": "prepend mute 2"
        }
      },
      {
        "box": {
          "id": "o96",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            311.0,
            34,
            27
          ],
          "varname": "solo2",
          "presentation": 1,
          "presentation_rect": [
            997,
            311.0,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o97",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1850,
            180,
            22
          ],
          "text": "prepend solo 2"
        }
      },
      {
        "box": {
          "id": "o98",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            314.0,
            169,
            20
          ],
          "varname": "level2",
          "presentation": 1,
          "presentation_rect": [
            1043,
            314.0,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o99",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1850,
            180,
            22
          ],
          "text": "prepend level 2"
        }
      },
      {
        "box": {
          "id": "o100",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            340.5,
            34,
            27
          ],
          "varname": "mute3",
          "presentation": 1,
          "presentation_rect": [
            955,
            340.5,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o101",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1850,
            180,
            22
          ],
          "text": "prepend mute 3"
        }
      },
      {
        "box": {
          "id": "o102",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            340.5,
            34,
            27
          ],
          "varname": "solo3",
          "presentation": 1,
          "presentation_rect": [
            997,
            340.5,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o103",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1875,
            180,
            22
          ],
          "text": "prepend solo 3"
        }
      },
      {
        "box": {
          "id": "o104",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            343.5,
            169,
            20
          ],
          "varname": "level3",
          "presentation": 1,
          "presentation_rect": [
            1043,
            343.5,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o105",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1875,
            180,
            22
          ],
          "text": "prepend level 3"
        }
      },
      {
        "box": {
          "id": "o106",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            370.0,
            34,
            27
          ],
          "varname": "mute4",
          "presentation": 1,
          "presentation_rect": [
            955,
            370.0,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o107",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1875,
            180,
            22
          ],
          "text": "prepend mute 4"
        }
      },
      {
        "box": {
          "id": "o108",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            370.0,
            34,
            27
          ],
          "varname": "solo4",
          "presentation": 1,
          "presentation_rect": [
            997,
            370.0,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o109",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1900,
            180,
            22
          ],
          "text": "prepend solo 4"
        }
      },
      {
        "box": {
          "id": "o110",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            373.0,
            169,
            20
          ],
          "varname": "level4",
          "presentation": 1,
          "presentation_rect": [
            1043,
            373.0,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o111",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1900,
            180,
            22
          ],
          "text": "prepend level 4"
        }
      },
      {
        "box": {
          "id": "o112",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            399.5,
            34,
            27
          ],
          "varname": "mute5",
          "presentation": 1,
          "presentation_rect": [
            955,
            399.5,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o113",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1900,
            180,
            22
          ],
          "text": "prepend mute 5"
        }
      },
      {
        "box": {
          "id": "o114",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            399.5,
            34,
            27
          ],
          "varname": "solo5",
          "presentation": 1,
          "presentation_rect": [
            997,
            399.5,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o115",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1925,
            180,
            22
          ],
          "text": "prepend solo 5"
        }
      },
      {
        "box": {
          "id": "o116",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            402.5,
            169,
            20
          ],
          "varname": "level5",
          "presentation": 1,
          "presentation_rect": [
            1043,
            402.5,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o117",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1925,
            180,
            22
          ],
          "text": "prepend level 5"
        }
      },
      {
        "box": {
          "id": "o118",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            429.0,
            34,
            27
          ],
          "varname": "mute6",
          "presentation": 1,
          "presentation_rect": [
            955,
            429.0,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o119",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1925,
            180,
            22
          ],
          "text": "prepend mute 6"
        }
      },
      {
        "box": {
          "id": "o120",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            429.0,
            34,
            27
          ],
          "varname": "solo6",
          "presentation": 1,
          "presentation_rect": [
            997,
            429.0,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o121",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1950,
            180,
            22
          ],
          "text": "prepend solo 6"
        }
      },
      {
        "box": {
          "id": "o122",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            432.0,
            169,
            20
          ],
          "varname": "level6",
          "presentation": 1,
          "presentation_rect": [
            1043,
            432.0,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o123",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1950,
            180,
            22
          ],
          "text": "prepend level 6"
        }
      },
      {
        "box": {
          "id": "o124",
          "maxclass": "textbutton",
          "patching_rect": [
            955,
            458.5,
            34,
            27
          ],
          "varname": "mute7",
          "presentation": 1,
          "presentation_rect": [
            955,
            458.5,
            34,
            27
          ],
          "text": "M",
          "texton": "M",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o125",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            1950,
            180,
            22
          ],
          "text": "prepend mute 7"
        }
      },
      {
        "box": {
          "id": "o126",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            458.5,
            34,
            27
          ],
          "varname": "solo7",
          "presentation": 1,
          "presentation_rect": [
            997,
            458.5,
            34,
            27
          ],
          "text": "S",
          "texton": "S",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o127",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            1975,
            180,
            22
          ],
          "text": "prepend solo 7"
        }
      },
      {
        "box": {
          "id": "o128",
          "maxclass": "slider",
          "patching_rect": [
            1043,
            461.5,
            169,
            20
          ],
          "varname": "level7",
          "presentation": 1,
          "presentation_rect": [
            1043,
            461.5,
            169,
            20
          ],
          "size": 131,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o129",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            1975,
            180,
            22
          ],
          "text": "prepend level 7"
        }
      },
      {
        "box": {
          "id": "o130",
          "maxclass": "comment",
          "patching_rect": [
            24,
            522,
            133,
            16
          ],
          "varname": "label129",
          "presentation": 1,
          "presentation_rect": [
            24,
            522,
            133,
            16
          ],
          "text": "VOICE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o131",
          "maxclass": "umenu",
          "patching_rect": [
            24,
            541,
            133,
            23
          ],
          "varname": "selected",
          "presentation": 1,
          "presentation_rect": [
            24,
            541,
            133,
            23
          ],
          "items": [
            "01 Kick",
            ",",
            "02 Snare",
            ",",
            "03 Hat",
            ",",
            "04 Metal",
            ",",
            "05 Membrane",
            ",",
            "06 Click",
            ",",
            "07 Grain",
            ",",
            "08 Bass"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o132",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            1975,
            180,
            22
          ],
          "text": "prepend select"
        }
      },
      {
        "box": {
          "id": "o133",
          "maxclass": "comment",
          "patching_rect": [
            177,
            522,
            76,
            16
          ],
          "varname": "label132",
          "presentation": 1,
          "presentation_rect": [
            177,
            522,
            76,
            16
          ],
          "text": "TUNE / ST",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o134",
          "maxclass": "flonum",
          "patching_rect": [
            177,
            541,
            70,
            23
          ],
          "varname": "edit_tune",
          "presentation": 1,
          "presentation_rect": [
            177,
            541,
            70,
            23
          ],
          "minimum": -24,
          "maximum": 24,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o135",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2000,
            180,
            22
          ],
          "text": "prepend part tune"
        }
      },
      {
        "box": {
          "id": "o136",
          "maxclass": "comment",
          "patching_rect": [
            263,
            522,
            76,
            16
          ],
          "varname": "label135",
          "presentation": 1,
          "presentation_rect": [
            263,
            522,
            76,
            16
          ],
          "text": "DECAY",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o137",
          "maxclass": "flonum",
          "patching_rect": [
            263,
            541,
            70,
            23
          ],
          "varname": "edit_decay",
          "presentation": 1,
          "presentation_rect": [
            263,
            541,
            70,
            23
          ],
          "minimum": 0.15,
          "maximum": 4,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o138",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2000,
            180,
            22
          ],
          "text": "prepend part decay"
        }
      },
      {
        "box": {
          "id": "o139",
          "maxclass": "comment",
          "patching_rect": [
            349,
            522,
            76,
            16
          ],
          "varname": "label138",
          "presentation": 1,
          "presentation_rect": [
            349,
            522,
            76,
            16
          ],
          "text": "COLOR",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o140",
          "maxclass": "flonum",
          "patching_rect": [
            349,
            541,
            70,
            23
          ],
          "varname": "edit_color",
          "presentation": 1,
          "presentation_rect": [
            349,
            541,
            70,
            23
          ],
          "minimum": 0,
          "maximum": 1,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o141",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2025,
            180,
            22
          ],
          "text": "prepend part color"
        }
      },
      {
        "box": {
          "id": "o142",
          "maxclass": "comment",
          "patching_rect": [
            435,
            522,
            76,
            16
          ],
          "varname": "label141",
          "presentation": 1,
          "presentation_rect": [
            435,
            522,
            76,
            16
          ],
          "text": "PAN",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o143",
          "maxclass": "flonum",
          "patching_rect": [
            435,
            541,
            70,
            23
          ],
          "varname": "edit_pan",
          "presentation": 1,
          "presentation_rect": [
            435,
            541,
            70,
            23
          ],
          "minimum": -1,
          "maximum": 1,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o144",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2025,
            180,
            22
          ],
          "text": "prepend part pan"
        }
      },
      {
        "box": {
          "id": "o145",
          "maxclass": "comment",
          "patching_rect": [
            521,
            522,
            76,
            16
          ],
          "varname": "label144",
          "presentation": 1,
          "presentation_rect": [
            521,
            522,
            76,
            16
          ],
          "text": "DRIVE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o146",
          "maxclass": "flonum",
          "patching_rect": [
            521,
            541,
            70,
            23
          ],
          "varname": "edit_drive",
          "presentation": 1,
          "presentation_rect": [
            521,
            541,
            70,
            23
          ],
          "minimum": 0,
          "maximum": 1,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o147",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2050,
            180,
            22
          ],
          "text": "prepend part drive"
        }
      },
      {
        "box": {
          "id": "o148",
          "maxclass": "comment",
          "patching_rect": [
            607,
            522,
            76,
            16
          ],
          "varname": "label147",
          "presentation": 1,
          "presentation_rect": [
            607,
            522,
            76,
            16
          ],
          "text": "PROBABILITY",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o149",
          "maxclass": "flonum",
          "patching_rect": [
            607,
            541,
            70,
            23
          ],
          "varname": "edit_prob",
          "presentation": 1,
          "presentation_rect": [
            607,
            541,
            70,
            23
          ],
          "minimum": 0,
          "maximum": 1,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o150",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2050,
            180,
            22
          ],
          "text": "prepend part prob"
        }
      },
      {
        "box": {
          "id": "o151",
          "maxclass": "comment",
          "patching_rect": [
            711,
            522,
            76,
            16
          ],
          "varname": "label150",
          "presentation": 1,
          "presentation_rect": [
            711,
            522,
            76,
            16
          ],
          "text": "EVENTS",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o152",
          "maxclass": "number",
          "patching_rect": [
            711,
            541,
            70,
            23
          ],
          "varname": "edit_length",
          "presentation": 1,
          "presentation_rect": [
            711,
            541,
            70,
            23
          ],
          "minimum": 1,
          "maximum": 64,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o153",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2075,
            180,
            22
          ],
          "text": "prepend part length"
        }
      },
      {
        "box": {
          "id": "o154",
          "maxclass": "comment",
          "patching_rect": [
            797,
            522,
            76,
            16
          ],
          "varname": "label153",
          "presentation": 1,
          "presentation_rect": [
            797,
            522,
            76,
            16
          ],
          "text": "RATE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o155",
          "maxclass": "flonum",
          "patching_rect": [
            797,
            541,
            70,
            23
          ],
          "varname": "edit_rate",
          "presentation": 1,
          "presentation_rect": [
            797,
            541,
            70,
            23
          ],
          "minimum": 0.25,
          "maximum": 4,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o156",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2075,
            180,
            22
          ],
          "text": "prepend part rate"
        }
      },
      {
        "box": {
          "id": "o157",
          "maxclass": "comment",
          "patching_rect": [
            883,
            522,
            76,
            16
          ],
          "varname": "label156",
          "presentation": 1,
          "presentation_rect": [
            883,
            522,
            76,
            16
          ],
          "text": "ROTATE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o158",
          "maxclass": "number",
          "patching_rect": [
            883,
            541,
            70,
            23
          ],
          "varname": "edit_rotate",
          "presentation": 1,
          "presentation_rect": [
            883,
            541,
            70,
            23
          ],
          "minimum": 0,
          "maximum": 63,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o159",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2100,
            180,
            22
          ],
          "text": "prepend part rotate"
        }
      },
      {
        "box": {
          "id": "o160",
          "maxclass": "comment",
          "patching_rect": [
            969,
            522,
            76,
            16
          ],
          "varname": "label159",
          "presentation": 1,
          "presentation_rect": [
            969,
            522,
            76,
            16
          ],
          "text": "SWING / GRID",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o161",
          "maxclass": "flonum",
          "patching_rect": [
            969,
            541,
            70,
            23
          ],
          "varname": "edit_swing",
          "presentation": 1,
          "presentation_rect": [
            969,
            541,
            70,
            23
          ],
          "minimum": 0,
          "maximum": 0.8,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o162",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2100,
            180,
            22
          ],
          "text": "prepend part swing"
        }
      },
      {
        "box": {
          "id": "o163",
          "maxclass": "textbutton",
          "patching_rect": [
            1070,
            541,
            90,
            27
          ],
          "varname": "edit_reverse",
          "presentation": 1,
          "presentation_rect": [
            1070,
            541,
            90,
            27
          ],
          "text": "REVERSE",
          "texton": "REVERSE",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o164",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            2125,
            180,
            22
          ],
          "text": "prepend part reverse"
        }
      },
      {
        "box": {
          "id": "o165",
          "maxclass": "textbutton",
          "patching_rect": [
            1168,
            541,
            56,
            27
          ],
          "varname": "euclid",
          "presentation": 1,
          "presentation_rect": [
            1168,
            541,
            56,
            27
          ],
          "text": "EUCLID",
          "texton": "EUCLID",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o166",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2125,
            180,
            22
          ],
          "text": "prepend euclid"
        }
      },
      {
        "box": {
          "id": "o167",
          "maxclass": "comment",
          "patching_rect": [
            24,
            589,
            110,
            20
          ],
          "varname": "label166",
          "presentation": 1,
          "presentation_rect": [
            24,
            589,
            110,
            20
          ],
          "text": "INTERVAL",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o168",
          "maxclass": "multislider",
          "patching_rect": [
            137,
            579,
            697,
            35
          ],
          "varname": "shape",
          "presentation": 1,
          "presentation_rect": [
            137,
            579,
            697,
            35
          ],
          "size": 7,
          "setminmax": [
            0.08,
            3
          ],
          "setstyle": 1,
          "slidercolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "spacing": 2,
          "contdata": 1,
          "settype": 1
        }
      },
      {
        "box": {
          "id": "o169",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2150,
            180,
            22
          ],
          "text": "prepend pattern shape"
        }
      },
      {
        "box": {
          "id": "o170",
          "maxclass": "comment",
          "patching_rect": [
            24,
            632,
            110,
            20
          ],
          "varname": "label169",
          "presentation": 1,
          "presentation_rect": [
            24,
            632,
            110,
            20
          ],
          "text": "ACCENT",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o171",
          "maxclass": "multislider",
          "patching_rect": [
            137,
            622,
            697,
            35
          ],
          "varname": "accent",
          "presentation": 1,
          "presentation_rect": [
            137,
            622,
            697,
            35
          ],
          "size": 7,
          "setminmax": [
            0,
            1
          ],
          "setstyle": 1,
          "slidercolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "spacing": 2,
          "contdata": 1,
          "settype": 1
        }
      },
      {
        "box": {
          "id": "o172",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2150,
            180,
            22
          ],
          "text": "prepend pattern accent"
        }
      },
      {
        "box": {
          "id": "o173",
          "maxclass": "comment",
          "patching_rect": [
            24,
            675,
            110,
            20
          ],
          "varname": "label172",
          "presentation": 1,
          "presentation_rect": [
            24,
            675,
            110,
            20
          ],
          "text": "TONE LOCK",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o174",
          "maxclass": "multislider",
          "patching_rect": [
            137,
            665,
            697,
            35
          ],
          "varname": "lock",
          "presentation": 1,
          "presentation_rect": [
            137,
            665,
            697,
            35
          ],
          "size": 7,
          "setminmax": [
            0,
            1
          ],
          "setstyle": 1,
          "slidercolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "spacing": 2,
          "contdata": 1,
          "settype": 1
        }
      },
      {
        "box": {
          "id": "o175",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2175,
            180,
            22
          ],
          "text": "prepend pattern lock"
        }
      },
      {
        "box": {
          "id": "o176",
          "maxclass": "comment",
          "patching_rect": [
            863,
            581,
            133,
            16
          ],
          "varname": "label175",
          "presentation": 1,
          "presentation_rect": [
            863,
            581,
            133,
            16
          ],
          "text": "MOD SOURCE",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o177",
          "maxclass": "umenu",
          "patching_rect": [
            863,
            600,
            133,
            23
          ],
          "varname": "modsource",
          "presentation": 1,
          "presentation_rect": [
            863,
            600,
            133,
            23
          ],
          "items": [
            "Kick",
            ",",
            "Snare",
            ",",
            "Hat",
            ",",
            "Metal",
            ",",
            "Membrane",
            ",",
            "Click",
            ",",
            "Grain",
            ",",
            "Bass"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o178",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2175,
            180,
            22
          ],
          "text": "prepend mod source"
        }
      },
      {
        "box": {
          "id": "o179",
          "maxclass": "comment",
          "patching_rect": [
            1007,
            581,
            133,
            16
          ],
          "varname": "label178",
          "presentation": 1,
          "presentation_rect": [
            1007,
            581,
            133,
            16
          ],
          "text": "MOD TARGET",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o180",
          "maxclass": "umenu",
          "patching_rect": [
            1007,
            600,
            133,
            23
          ],
          "varname": "modtype",
          "presentation": 1,
          "presentation_rect": [
            1007,
            600,
            133,
            23
          ],
          "items": [
            "Interval",
            ",",
            "Timbre",
            ",",
            "Accent"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o181",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2200,
            180,
            22
          ],
          "text": "prepend mod type"
        }
      },
      {
        "box": {
          "id": "o182",
          "maxclass": "comment",
          "patching_rect": [
            1151,
            581,
            79,
            16
          ],
          "varname": "label181",
          "presentation": 1,
          "presentation_rect": [
            1151,
            581,
            79,
            16
          ],
          "text": "MOD AMOUNT",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o183",
          "maxclass": "flonum",
          "patching_rect": [
            1151,
            600,
            73,
            23
          ],
          "varname": "modamount",
          "presentation": 1,
          "presentation_rect": [
            1151,
            600,
            73,
            23
          ],
          "minimum": -1,
          "maximum": 1,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o184",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2200,
            180,
            22
          ],
          "text": "prepend mod amount"
        }
      },
      {
        "box": {
          "id": "o185",
          "maxclass": "textbutton",
          "patching_rect": [
            863,
            642,
            122,
            27
          ],
          "varname": "sample",
          "presentation": 1,
          "presentation_rect": [
            863,
            642,
            122,
            27
          ],
          "text": "LOAD SAMPLE",
          "texton": "LOAD SAMPLE",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o186",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2200,
            180,
            22
          ],
          "text": "prepend sample"
        }
      },
      {
        "box": {
          "id": "o187",
          "maxclass": "textbutton",
          "patching_rect": [
            997,
            642,
            94,
            27
          ],
          "varname": "internalsample",
          "presentation": 1,
          "presentation_rect": [
            997,
            642,
            94,
            27
          ],
          "text": "INTERNAL",
          "texton": "INTERNAL",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o188",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            2225,
            180,
            22
          ],
          "text": "prepend internalsample"
        }
      },
      {
        "box": {
          "id": "o189",
          "maxclass": "newobj",
          "patching_rect": [
            940,
            1500,
            200,
            22
          ],
          "text": "opendialog"
        }
      },
      {
        "box": {
          "id": "o190",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2225,
            180,
            22
          ],
          "text": "prepend sample"
        }
      },
      {
        "box": {
          "id": "o191",
          "maxclass": "comment",
          "patching_rect": [
            863,
            672,
            94,
            16
          ],
          "varname": "label190",
          "presentation": 1,
          "presentation_rect": [
            863,
            672,
            94,
            16
          ],
          "text": "FEEDBACK %",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o192",
          "maxclass": "flonum",
          "patching_rect": [
            863,
            691,
            88,
            23
          ],
          "varname": "feedback",
          "presentation": 1,
          "presentation_rect": [
            863,
            691,
            88,
            23
          ],
          "minimum": 0,
          "maximum": 76,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o193",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2250,
            180,
            22
          ],
          "text": "prepend feedback"
        }
      },
      {
        "box": {
          "id": "o194",
          "maxclass": "comment",
          "patching_rect": [
            970,
            672,
            94,
            16
          ],
          "varname": "label193",
          "presentation": 1,
          "presentation_rect": [
            970,
            672,
            94,
            16
          ],
          "text": "DELAY / MS",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o195",
          "maxclass": "flonum",
          "patching_rect": [
            970,
            691,
            88,
            23
          ],
          "varname": "delaytime",
          "presentation": 1,
          "presentation_rect": [
            970,
            691,
            88,
            23
          ],
          "minimum": 13,
          "maximum": 1700,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o196",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2250,
            180,
            22
          ],
          "text": "prepend delaytime"
        }
      },
      {
        "box": {
          "id": "o197",
          "maxclass": "comment",
          "patching_rect": [
            1080,
            672,
            140,
            16
          ],
          "varname": "label196",
          "presentation": 1,
          "presentation_rect": [
            1080,
            672,
            140,
            16
          ],
          "text": "DSP QUALITY",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o198",
          "maxclass": "umenu",
          "patching_rect": [
            1080,
            691,
            140,
            23
          ],
          "varname": "quality",
          "presentation": 1,
          "presentation_rect": [
            1080,
            691,
            140,
            23
          ],
          "items": [
            "1x",
            ",",
            "2x",
            ",",
            "4x"
          ],
          "fontsize": 11,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o199",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2275,
            180,
            22
          ],
          "text": "prepend quality"
        }
      },
      {
        "box": {
          "id": "o200",
          "maxclass": "textbutton",
          "patching_rect": [
            24,
            733,
            81,
            27
          ],
          "varname": "freeze",
          "presentation": 1,
          "presentation_rect": [
            24,
            733,
            81,
            27
          ],
          "text": "FREEZE",
          "texton": "FREEZE",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o201",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2275,
            180,
            22
          ],
          "text": "prepend freeze"
        }
      },
      {
        "box": {
          "id": "o202",
          "maxclass": "textbutton",
          "patching_rect": [
            114,
            733,
            81,
            27
          ],
          "varname": "anchor",
          "presentation": 1,
          "presentation_rect": [
            114,
            733,
            81,
            27
          ],
          "text": "ANCHOR",
          "texton": "ANCHOR",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o203",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            2275,
            180,
            22
          ],
          "text": "prepend anchor"
        }
      },
      {
        "box": {
          "id": "o204",
          "maxclass": "textbutton",
          "patching_rect": [
            204,
            733,
            81,
            27
          ],
          "varname": "evolve",
          "presentation": 1,
          "presentation_rect": [
            204,
            733,
            81,
            27
          ],
          "text": "EVOLVE",
          "texton": "EVOLVE",
          "mode": 1,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.06,
            0.12,
            0.08,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o205",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            2300,
            180,
            22
          ],
          "text": "prepend evolve"
        }
      },
      {
        "box": {
          "id": "o206",
          "maxclass": "textbutton",
          "patching_rect": [
            294,
            733,
            81,
            27
          ],
          "varname": "mutate",
          "presentation": 1,
          "presentation_rect": [
            294,
            733,
            81,
            27
          ],
          "text": "MUTATE",
          "texton": "MUTATE",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o207",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2300,
            180,
            22
          ],
          "text": "prepend mutate"
        }
      },
      {
        "box": {
          "id": "o208",
          "maxclass": "textbutton",
          "patching_rect": [
            384,
            733,
            72,
            27
          ],
          "varname": "undo",
          "presentation": 1,
          "presentation_rect": [
            384,
            733,
            72,
            27
          ],
          "text": "UNDO",
          "texton": "UNDO",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o209",
          "maxclass": "newobj",
          "patching_rect": [
            800,
            2300,
            180,
            22
          ],
          "text": "prepend undo"
        }
      },
      {
        "box": {
          "id": "o210",
          "maxclass": "comment",
          "patching_rect": [
            475,
            714,
            122,
            16
          ],
          "varname": "label209",
          "presentation": 1,
          "presentation_rect": [
            475,
            714,
            122,
            16
          ],
          "text": "SEED",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o211",
          "maxclass": "number",
          "patching_rect": [
            475,
            733,
            116,
            23
          ],
          "varname": "seed",
          "presentation": 1,
          "presentation_rect": [
            475,
            733,
            116,
            23
          ],
          "minimum": 1,
          "maximum": 2000000000,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o212",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            2325,
            180,
            22
          ],
          "text": "prepend seed"
        }
      },
      {
        "box": {
          "id": "o213",
          "maxclass": "textbutton",
          "patching_rect": [
            610,
            733,
            64,
            27
          ],
          "varname": "capA",
          "presentation": 1,
          "presentation_rect": [
            610,
            733,
            64,
            27
          ],
          "text": "CAP A",
          "texton": "CAP A",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o214",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2325,
            180,
            22
          ],
          "text": "prepend capture 0"
        }
      },
      {
        "box": {
          "id": "o215",
          "maxclass": "textbutton",
          "patching_rect": [
            681,
            733,
            64,
            27
          ],
          "varname": "capB",
          "presentation": 1,
          "presentation_rect": [
            681,
            733,
            64,
            27
          ],
          "text": "CAP B",
          "texton": "CAP B",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o216",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2325,
            180,
            22
          ],
          "text": "prepend capture 1"
        }
      },
      {
        "box": {
          "id": "o217",
          "maxclass": "comment",
          "patching_rect": [
            758,
            714,
            176,
            17
          ],
          "varname": "label216",
          "presentation": 1,
          "presentation_rect": [
            758,
            714,
            176,
            17
          ],
          "text": "A   MORPH   B",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o218",
          "maxclass": "slider",
          "patching_rect": [
            758,
            737,
            176,
            17
          ],
          "varname": "morph",
          "presentation": 1,
          "presentation_rect": [
            758,
            737,
            176,
            17
          ],
          "size": 101,
          "floatoutput": 1,
          "orientation": 1,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "knobcolor": [
            0.65,
            0.83,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o219",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            2350,
            180,
            22
          ],
          "text": "prepend morph"
        }
      },
      {
        "box": {
          "id": "o220",
          "maxclass": "comment",
          "patching_rect": [
            955,
            723,
            88,
            16
          ],
          "varname": "label219",
          "presentation": 1,
          "presentation_rect": [
            955,
            723,
            88,
            16
          ],
          "text": "OUTPUT / DB",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o221",
          "maxclass": "flonum",
          "patching_rect": [
            955,
            742,
            82,
            23
          ],
          "varname": "master",
          "presentation": 1,
          "presentation_rect": [
            955,
            742,
            82,
            23
          ],
          "minimum": -60,
          "maximum": 0,
          "fontsize": 12,
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "o222",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2350,
            180,
            22
          ],
          "text": "prepend master"
        }
      },
      {
        "box": {
          "id": "o223",
          "maxclass": "comment",
          "patching_rect": [
            1050,
            742,
            140,
            18
          ],
          "varname": "record_status",
          "presentation": 1,
          "presentation_rect": [
            1050,
            742,
            140,
            18
          ],
          "text": "REC OFF",
          "fontsize": 10,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o224",
          "maxclass": "comment",
          "patching_rect": [
            24,
            784,
            980,
            21
          ],
          "varname": "status",
          "presentation": 1,
          "presentation_rect": [
            24,
            784,
            980,
            21
          ],
          "text": "Ready",
          "fontsize": 12,
          "fontname": "Arial",
          "textcolor": [
            0.5,
            0.59,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o225",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            1190,
            540,
            22
          ],
          "text": "limi~ 2 @threshold -1.5 @lookahead 128 @release 90 @dcblock 1",
          "varname": "limiter"
        }
      },
      {
        "box": {
          "id": "o226",
          "maxclass": "newobj",
          "patching_rect": [
            660,
            1190,
            140,
            22
          ],
          "text": "pack 0. 20",
          "varname": "masterline"
        }
      },
      {
        "box": {
          "id": "o227",
          "maxclass": "newobj",
          "patching_rect": [
            660,
            1220,
            200,
            22
          ],
          "text": "line~ 0."
        }
      },
      {
        "box": {
          "id": "o228",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            1350,
            130,
            22
          ],
          "text": "dac~ 1 2",
          "varname": "dspcontrol"
        }
      },
      {
        "box": {
          "id": "o229",
          "maxclass": "newobj",
          "patching_rect": [
            280,
            1350,
            300,
            22
          ],
          "text": "sfrecord~ 2",
          "varname": "recorder"
        }
      },
      {
        "box": {
          "id": "o230",
          "maxclass": "newobj",
          "patching_rect": [
            50,
            1270,
            200,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "o231",
          "maxclass": "meter~",
          "patching_rect": [
            1050,
            776,
            174,
            9
          ],
          "varname": "meter0",
          "presentation": 1,
          "presentation_rect": [
            1050,
            776,
            174,
            9
          ],
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o232",
          "maxclass": "newobj",
          "patching_rect": [
            270,
            1270,
            200,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "o233",
          "maxclass": "meter~",
          "patching_rect": [
            1050,
            787,
            174,
            9
          ],
          "varname": "meter1",
          "presentation": 1,
          "presentation_rect": [
            1050,
            787,
            174,
            9
          ],
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ]
        }
      },
      {
        "box": {
          "id": "o234",
          "maxclass": "newobj",
          "patching_rect": [
            780,
            1190,
            140,
            22
          ],
          "text": "qmetro 40",
          "varname": "ui_clock"
        }
      },
      {
        "box": {
          "id": "o235",
          "maxclass": "newobj",
          "patching_rect": [
            780,
            1250,
            140,
            22
          ],
          "text": "snapshot~"
        }
      },
      {
        "box": {
          "id": "o236",
          "maxclass": "newobj",
          "patching_rect": [
            230,
            2425,
            180,
            22
          ],
          "text": "prepend position"
        }
      },
      {
        "box": {
          "id": "o237",
          "maxclass": "newobj",
          "patching_rect": [
            940,
            1250,
            140,
            22
          ],
          "text": "snapshot~"
        }
      },
      {
        "box": {
          "id": "o238",
          "maxclass": "newobj",
          "patching_rect": [
            610,
            2425,
            180,
            22
          ],
          "text": "prepend frame"
        }
      },
      {
        "box": {
          "id": "o239",
          "maxclass": "textbutton",
          "patching_rect": [
            1189,
            741,
            35,
            27
          ],
          "varname": "help",
          "presentation": 1,
          "presentation_rect": [
            1189,
            741,
            35,
            27
          ],
          "text": "?",
          "texton": "?",
          "mode": 0,
          "outputmode": 1,
          "legacytextcolor": 1,
          "fontsize": 11,
          "fontname": "Arial",
          "bgcolor": [
            0.11,
            0.14,
            0.13,
            1
          ],
          "bgoncolor": [
            0.65,
            0.83,
            0.68,
            1
          ],
          "textcolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "textoncolor": [
            0.86,
            0.9,
            0.86,
            1
          ],
          "rounded": 4
        }
      },
      {
        "box": {
          "id": "o240",
          "maxclass": "newobj",
          "patching_rect": [
            990,
            2425,
            180,
            22
          ],
          "text": "prepend help"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "o4",
            1
          ],
          "destination": [
            "o5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o5",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o6",
            0
          ],
          "destination": [
            "o7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o7",
            0
          ],
          "destination": [
            "o8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o8",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o12",
            0
          ],
          "destination": [
            "o13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o13",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o14",
            0
          ],
          "destination": [
            "o15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o15",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o16",
            0
          ],
          "destination": [
            "o17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o17",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o19",
            0
          ],
          "destination": [
            "o20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o20",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o22",
            0
          ],
          "destination": [
            "o23",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o23",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o25",
            0
          ],
          "destination": [
            "o26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o26",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o28",
            0
          ],
          "destination": [
            "o29",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o29",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o31",
            0
          ],
          "destination": [
            "o32",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o32",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o34",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o36",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o38",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o39",
            0
          ],
          "destination": [
            "o40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o40",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o41",
            0
          ],
          "destination": [
            "o42",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o42",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o33",
            0
          ],
          "destination": [
            "o43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o43",
            0
          ],
          "destination": [
            "o44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o44",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o35",
            0
          ],
          "destination": [
            "o45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o45",
            0
          ],
          "destination": [
            "o46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o46",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o37",
            0
          ],
          "destination": [
            "o47",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o47",
            0
          ],
          "destination": [
            "o48",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o48",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o50",
            0
          ],
          "destination": [
            "o51",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o51",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o52",
            0
          ],
          "destination": [
            "o50",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o55",
            0
          ],
          "destination": [
            "o56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o56",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o57",
            0
          ],
          "destination": [
            "o55",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o60",
            0
          ],
          "destination": [
            "o61",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o61",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o62",
            0
          ],
          "destination": [
            "o60",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o65",
            0
          ],
          "destination": [
            "o66",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o66",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o67",
            0
          ],
          "destination": [
            "o65",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o70",
            0
          ],
          "destination": [
            "o71",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o71",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o72",
            0
          ],
          "destination": [
            "o70",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o75",
            0
          ],
          "destination": [
            "o76",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o76",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o77",
            0
          ],
          "destination": [
            "o75",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o81",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o82",
            0
          ],
          "destination": [
            "o83",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o83",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o84",
            0
          ],
          "destination": [
            "o85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o85",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o86",
            0
          ],
          "destination": [
            "o87",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o87",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o88",
            0
          ],
          "destination": [
            "o89",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o89",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o90",
            0
          ],
          "destination": [
            "o91",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o91",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o92",
            0
          ],
          "destination": [
            "o93",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o93",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o94",
            0
          ],
          "destination": [
            "o95",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o95",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o96",
            0
          ],
          "destination": [
            "o97",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o97",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o98",
            0
          ],
          "destination": [
            "o99",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o99",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o100",
            0
          ],
          "destination": [
            "o101",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o101",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o102",
            0
          ],
          "destination": [
            "o103",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o103",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o104",
            0
          ],
          "destination": [
            "o105",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o105",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o106",
            0
          ],
          "destination": [
            "o107",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o107",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o108",
            0
          ],
          "destination": [
            "o109",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o109",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o110",
            0
          ],
          "destination": [
            "o111",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o111",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o112",
            0
          ],
          "destination": [
            "o113",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o113",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o114",
            0
          ],
          "destination": [
            "o115",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o115",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o116",
            0
          ],
          "destination": [
            "o117",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o117",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o118",
            0
          ],
          "destination": [
            "o119",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o119",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o120",
            0
          ],
          "destination": [
            "o121",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o121",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o122",
            0
          ],
          "destination": [
            "o123",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o123",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o124",
            0
          ],
          "destination": [
            "o125",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o125",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o126",
            0
          ],
          "destination": [
            "o127",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o127",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o128",
            0
          ],
          "destination": [
            "o129",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o129",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o131",
            0
          ],
          "destination": [
            "o132",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o132",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o134",
            0
          ],
          "destination": [
            "o135",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o135",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o137",
            0
          ],
          "destination": [
            "o138",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o138",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o140",
            0
          ],
          "destination": [
            "o141",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o141",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o143",
            0
          ],
          "destination": [
            "o144",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o144",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o146",
            0
          ],
          "destination": [
            "o147",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o147",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o149",
            0
          ],
          "destination": [
            "o150",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o150",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o152",
            0
          ],
          "destination": [
            "o153",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o153",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o155",
            0
          ],
          "destination": [
            "o156",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o156",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o158",
            0
          ],
          "destination": [
            "o159",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o159",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o161",
            0
          ],
          "destination": [
            "o162",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o162",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o163",
            0
          ],
          "destination": [
            "o164",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o164",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o165",
            0
          ],
          "destination": [
            "o166",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o166",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o168",
            0
          ],
          "destination": [
            "o169",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o169",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o171",
            0
          ],
          "destination": [
            "o172",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o172",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o174",
            0
          ],
          "destination": [
            "o175",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o175",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o177",
            0
          ],
          "destination": [
            "o178",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o178",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o180",
            0
          ],
          "destination": [
            "o181",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o181",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o183",
            0
          ],
          "destination": [
            "o184",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o184",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o186",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o187",
            0
          ],
          "destination": [
            "o188",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o188",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o185",
            0
          ],
          "destination": [
            "o189",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o189",
            0
          ],
          "destination": [
            "o190",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o190",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o192",
            0
          ],
          "destination": [
            "o193",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o193",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o195",
            0
          ],
          "destination": [
            "o196",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o196",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o198",
            0
          ],
          "destination": [
            "o199",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o199",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o200",
            0
          ],
          "destination": [
            "o201",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o201",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o202",
            0
          ],
          "destination": [
            "o203",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o203",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o204",
            0
          ],
          "destination": [
            "o205",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o205",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o206",
            0
          ],
          "destination": [
            "o207",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o207",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o208",
            0
          ],
          "destination": [
            "o209",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o209",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o211",
            0
          ],
          "destination": [
            "o212",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o212",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o213",
            0
          ],
          "destination": [
            "o214",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o214",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o215",
            0
          ],
          "destination": [
            "o216",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o216",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o218",
            0
          ],
          "destination": [
            "o219",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o219",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o221",
            0
          ],
          "destination": [
            "o222",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o222",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o2",
            0
          ],
          "destination": [
            "o225",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o2",
            1
          ],
          "destination": [
            "o225",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o226",
            0
          ],
          "destination": [
            "o227",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o225",
            0
          ],
          "destination": [
            "o230",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o227",
            0
          ],
          "destination": [
            "o230",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o230",
            0
          ],
          "destination": [
            "o228",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o230",
            0
          ],
          "destination": [
            "o229",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o230",
            0
          ],
          "destination": [
            "o231",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o225",
            1
          ],
          "destination": [
            "o232",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o227",
            0
          ],
          "destination": [
            "o232",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o232",
            0
          ],
          "destination": [
            "o228",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o232",
            0
          ],
          "destination": [
            "o229",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o232",
            0
          ],
          "destination": [
            "o233",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o2",
            2
          ],
          "destination": [
            "o235",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o234",
            0
          ],
          "destination": [
            "o235",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o235",
            0
          ],
          "destination": [
            "o236",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o236",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o2",
            3
          ],
          "destination": [
            "o237",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o234",
            0
          ],
          "destination": [
            "o237",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o237",
            0
          ],
          "destination": [
            "o238",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o238",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o239",
            0
          ],
          "destination": [
            "o240",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o240",
            0
          ],
          "destination": [
            "o1",
            0
          ]
        }
      }
    ]
  }
}