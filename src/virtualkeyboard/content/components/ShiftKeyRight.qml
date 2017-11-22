/***
  Copyright (c) 2017 Nepos GmbH

  Authors: Pascal Huerst <pascal.huerst@gmail.com>

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, see <http://www.gnu.org/licenses/>.
***/

import QtQuick 2.0
import QtQuick.VirtualKeyboard 2.1

/*!
    \qmltype ShiftKeyRight
    \inqmlmodule QtQuick.VirtualKeyboard
    \ingroup qtvirtualkeyboard-qml
    \inherits BaseKey

    \brief Shift key for keyboard layouts.

    This key changes the shift state of the keyboard.
*/

BaseKey {
    id: shiftKeyRight

    property string image: "images/btn_shift_right.svg"
    property string image_highlight: "images/btn_shift_right_highlight.svg"

    width: 72
    height: 64

    key: Qt.Key_Shift
    displayText: ""
    enabled: InputContext.shiftHandler.toggleShiftEnabled
    highlighted: InputContext.capsLock
    functionKey: true
    keyPanelDelegate: keyboard.style ? keyboard.style.shiftKeyLeftPanel : undefined
    onClicked: InputContext.shiftHandler.toggleShift()
}
