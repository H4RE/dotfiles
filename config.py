# config.py
from keyhac import *

# HHKBのキーマップ変更ツールでqと-_, Returnと=+を交換してる前提


def configure(keymap):

    keymap_global = keymap.defineWindowKeymap()

    keymap.replaceKey("RWin", 25)  # switch IME

    # SandS
    keymap.replaceKey("Space", "RShift")
    keymap_global["O-RShift"] = "Space"

    # # swap 'q' and '-'
    # keymap_global["q"] = "Minus"
    # keymap_global["Minus"] = "q"
    # keymap_global["Shift-q"] = "Shift-Minus"
    # keymap_global["Shift-Minus"] = "Shift-q"

    # # swap "Return" and ';'
    # keymap_global[ "Return"  ] = "Plus"
    # keymap_global[ "Plus"  ] = "Return"
    # keymap_global[ "Shift-Return"  ] = "Shift-Plus"
    # keymap_global[ "Shift-Plus"  ] = "Shift-Return"

    # SandS
    keymap_global["RShift-a"] = "1"
    keymap_global["RShift-s"] = "2"
    keymap_global["RShift-d"] = "3"
    keymap_global["RShift-f"] = "4"
    keymap_global["RShift-g"] = "5"
    keymap_global["RShift-h"] = "6"
    keymap_global["RShift-j"] = "7"
    keymap_global["RShift-k"] = "8"
    keymap_global["RShift-l"] = "9"
    keymap_global["RShift-Semicolon"] = "0"
    keymap_global["RShift-i"] = "RShift-9"
    keymap_global["RShift-o"] = "RShift-0"

    # Vim like
    keymap_global["LAlt-h"] = "Left"
    keymap_global["LAlt-j"] = "Down"
    keymap_global["LAlt-k"] = "Up"
    keymap_global["LAlt-l"] = "Right"

    keymap_global["LAlt-g"] = "Home"
    keymap_global["LAlt-Semicolon"] = "End"
    keymap_global["LAlt-Shift-g"] = "Shift-Home"
    keymap_global["LAlt-Shift-Semicolon"] = "Shift-End"
    keymap_global["Ctrl-j"] = "Return"
    keymap_global["Ctrl-LShift-j"] = "Shift-Return"
    keymap_global["Ctrl-h"] = "Back"
