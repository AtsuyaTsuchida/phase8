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
      815
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
    "openinpresentation": 0,
    "bglocked": 1,
    "toolbarvisible": 0,
    "statusbarvisible": 0,
    "boxes": [
      {
        "box": {
          "id": "o1",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            20,
            200,
            22
          ],
          "text": "in 1"
        }
      },
      {
        "box": {
          "id": "o2",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            55,
            610,
            22
          ],
          "text": "route clock v1 v2 v3 v4 v5 v6 v7 v8 fx clear"
        }
      },
      {
        "box": {
          "id": "o3",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            100,
            170,
            22
          ],
          "text": "gen~ p8_clock"
        }
      },
      {
        "box": {
          "id": "o4",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            480,
            200,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "o5",
          "maxclass": "newobj",
          "patching_rect": [
            480,
            480,
            200,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "o6",
          "maxclass": "newobj",
          "patching_rect": [
            30,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice1"
        }
      },
      {
        "box": {
          "id": "o7",
          "maxclass": "newobj",
          "patching_rect": [
            165,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice2"
        }
      },
      {
        "box": {
          "id": "o8",
          "maxclass": "newobj",
          "patching_rect": [
            300,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice3"
        }
      },
      {
        "box": {
          "id": "o9",
          "maxclass": "newobj",
          "patching_rect": [
            435,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice4"
        }
      },
      {
        "box": {
          "id": "o10",
          "maxclass": "newobj",
          "patching_rect": [
            570,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice5"
        }
      },
      {
        "box": {
          "id": "o11",
          "maxclass": "newobj",
          "patching_rect": [
            705,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice6"
        }
      },
      {
        "box": {
          "id": "o12",
          "maxclass": "newobj",
          "patching_rect": [
            840,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice7"
        }
      },
      {
        "box": {
          "id": "o13",
          "maxclass": "newobj",
          "patching_rect": [
            975,
            200,
            125,
            22
          ],
          "text": "gen~ p8_voice8"
        }
      },
      {
        "box": {
          "id": "o14",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            480,
            200,
            22
          ],
          "text": "gen~ p8_space"
        }
      },
      {
        "box": {
          "id": "o15",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            550,
            200,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "o16",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            600,
            200,
            22
          ],
          "text": "out~ 1"
        }
      },
      {
        "box": {
          "id": "o17",
          "maxclass": "newobj",
          "patching_rect": [
            480,
            550,
            200,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "o18",
          "maxclass": "newobj",
          "patching_rect": [
            480,
            600,
            200,
            22
          ],
          "text": "out~ 2"
        }
      },
      {
        "box": {
          "id": "o19",
          "maxclass": "newobj",
          "patching_rect": [
            760,
            600,
            200,
            22
          ],
          "text": "out~ 3"
        }
      },
      {
        "box": {
          "id": "o20",
          "maxclass": "newobj",
          "patching_rect": [
            910,
            600,
            200,
            22
          ],
          "text": "out~ 4"
        }
      },
      {
        "box": {
          "id": "o21",
          "maxclass": "message",
          "patching_rect": [
            850,
            100,
            60,
            22
          ],
          "text": "reset"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "o1",
            0
          ],
          "destination": [
            "o2",
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
            "o3",
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
            "o6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            0
          ],
          "destination": [
            "o6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            1
          ],
          "destination": [
            "o6",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o6",
            2
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
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o6",
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
            "o2",
            2
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
            "o3",
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
            "o3",
            1
          ],
          "destination": [
            "o7",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o7",
            2
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
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o7",
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
            "o2",
            3
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
            "o3",
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
            "o3",
            1
          ],
          "destination": [
            "o8",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o8",
            2
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
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o8",
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
            "o2",
            4
          ],
          "destination": [
            "o9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            0
          ],
          "destination": [
            "o9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            1
          ],
          "destination": [
            "o9",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o9",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o9",
            0
          ],
          "destination": [
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o9",
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
            "o2",
            5
          ],
          "destination": [
            "o10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            0
          ],
          "destination": [
            "o10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            1
          ],
          "destination": [
            "o10",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o10",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o10",
            0
          ],
          "destination": [
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o10",
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
            "o2",
            6
          ],
          "destination": [
            "o11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            0
          ],
          "destination": [
            "o11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            1
          ],
          "destination": [
            "o11",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o11",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o11",
            0
          ],
          "destination": [
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o11",
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
            "o2",
            7
          ],
          "destination": [
            "o12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            0
          ],
          "destination": [
            "o12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            1
          ],
          "destination": [
            "o12",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o12",
            2
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
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o12",
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
            "o2",
            8
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
            "o3",
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
            "o3",
            1
          ],
          "destination": [
            "o13",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            2
          ],
          "destination": [
            "o13",
            2
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
            "o4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o13",
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
            "o2",
            9
          ],
          "destination": [
            "o14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o4",
            0
          ],
          "destination": [
            "o14",
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
            "o14",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o4",
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
            "o14",
            0
          ],
          "destination": [
            "o15",
            1
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
            "o16",
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
            "o17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o14",
            1
          ],
          "destination": [
            "o17",
            1
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
            "o18",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            3
          ],
          "destination": [
            "o19",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o3",
            4
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
            "o2",
            10
          ],
          "destination": [
            "o21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
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
            "o21",
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
            "o21",
            0
          ],
          "destination": [
            "o9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "o21",
            0
          ],
          "destination": [
            "o13",
            0
          ]
        }
      }
    ]
  }
}