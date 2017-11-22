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

/*!
    \qmltype ImageKey
    \inqmlmodule QtQuick.VirtualKeyboard
    \ingroup qtvirtualkeyboard-qml
    \inherits BaseKey

    \brief Key based on an image, like an svg

    Base for image based keys
*/


BaseKey {

    function codePointToString(codePoint) {

        var chars = []
        if (codePoint < 0x10000) {
            chars.push(codePoint)
        } else {
            codePoint -= 0x10000
            chars.push((codePoint>>10) + 0xD800)
            chars.push((codePoint%0x400) + 0xDC00)
        }
        return String.fromCharCode.apply(undefined, chars)
    }

    property string image: "images/btn_main.svg"
    property string image_highlight: "images/btn_main_highlight.svg"
    property int is_emoticon: 0

    text: codePointToString(key)

    width: 72
    height: 72

    keyPanelDelegate: keyboard.style ? keyboard.style.imageKeyPanel: undefined
}


