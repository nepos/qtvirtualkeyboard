/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Virtual Keyboard module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.VirtualKeyboard 2.1

KeyboardLayoutLoader {

    id: keyboardLoader

    property int yRow1: 16
    property int yRow2: yRow1 + 80
    property int yRow3: yRow2 + 80
    property int yRow4: yRow3 + 80
    property int yRow5: yRow4 + 88

    function row1GetX(keyNr) {
        return keyNr*16 + (keyNr-1)*72
    }

    function row2GetX(keyNr) {
        return row1GetX(keyNr) + 30
    }

    function row3GetX(keyNr) {
        return row2GetX(keyNr) + 26
    }

    function row4GetX(keyNr) {
        return row1GetX(keyNr) + 188
    }

    function row5GetX(keyNr) {
        return row1GetX(keyNr)
    }

    sourceComponent: mainPage

    Component {
        id: mainPage
        KeyboardLayout {

            inputMode: InputEngine.Latin

            //Row 1
            ImageKey {
                key: 0x0031
                x: row1GetX(1)
                y: yRow1
            }
            ImageKey {
                key: 0x0032
                x: row1GetX(2)
                y: yRow1
            }
            ImageKey {
                key: 0x0033
                x: row1GetX(3)
                y: yRow1
            }
            ImageKey {
                key: 0x0034
                x: row1GetX(4)
                y: yRow1
            }
            ImageKey {
                key: 0x0035
                x: row1GetX(5)
                y: yRow1
            }
            ImageKey {
                key: 0x0036
                x: row1GetX(6)
                y: yRow1
            }
            ImageKey {
                key: 0x0037
                x: row1GetX(7)
                y: yRow1
            }
            ImageKey {
                key: 0x0038
                x: row1GetX(8)
                y: yRow1
            }
            ImageKey {
                key: 0x0039
                x: row1GetX(9)
                y: yRow1
            }
            ImageKey {
                key: 0x0030
                x: row1GetX(10)
                y: yRow1
            }
            ImageKey {
                key: 0x00df
                x: row1GetX(11)
                y: yRow1
            }
            ImageKey {
                key: 0x0021
                x: row1GetX(12)
                y: yRow1
            }
            ImageKey {
                key: 0x003f
                x: row1GetX(13)
                y: yRow1
            }
            BackspaceKey {
                x: row1GetX(14) - 4
                y: yRow1 + 3
            }

            //Row 2
            ImageKey {
                key: 0x20ac
                x: row2GetX(1)
                y: yRow2
            }
            ImageKey {
                key: 0x0071
                x: row2GetX(2)
                y: yRow2
            }
            ImageKey {
                key: 0x0077
                x: row2GetX(3)
                y: yRow2
            }
            ImageKey {
                key: 0x0065
                x: row2GetX(4)
                y: yRow2
            }
            ImageKey {
                key: 0x0072
                x: row2GetX(5)
                y: yRow2
            }
            ImageKey {
                key: 0x0074
                x: row2GetX(6)
                y: yRow2
            }
            ImageKey {
                key: 0x007a
                x: row2GetX(7)
                y: yRow2
            }
            ImageKey {
                key: 0x0075
                x: row2GetX(8)
                y: yRow2
            }
            ImageKey {
                key: 0x0069
                x: row2GetX(9)
                y: yRow2
            }
            ImageKey {
                key: 0x006f
                x: row2GetX(10)
                y: yRow2
            }
            ImageKey {
                key: 0x0070
                x: row2GetX(11)
                y: yRow2
            }
            ImageKey {
                key: 0x00fc
                x: row2GetX(12)
                y: yRow2
            }
            EnterKey {
                x: row2GetX(13) + 54
                y: yRow2 + 3
            }

            //Row 3
            ImageKey {
                key: 0x0040
                x: row3GetX(1)
                y: yRow3
            }
            ImageKey {
                key: 0x0061
                x: row3GetX(2)
                y: yRow3
            }
            ImageKey {
                key: 0x0073
                x: row3GetX(3)
                y: yRow3
            }
            ImageKey {
                key: 0x0064
                x: row3GetX(4)
                y: yRow3
            }
            ImageKey {
                key: 0x0066
                x: row3GetX(5)
                y: yRow3
            }
            ImageKey {
                key: 0x0067
                x: row3GetX(6)
                y: yRow3
            }
            ImageKey {
                key: 0x0068
                x: row3GetX(7)
                y: yRow3
            }
            ImageKey {
                key: 0x006a
                x: row3GetX(8)
                y: yRow3
            }
            ImageKey {
                key: 0x006b
                x: row3GetX(9)
                y: yRow3
            }
            ImageKey {
                key: 0x006c
                x: row3GetX(10)
                y: yRow3
            }
            ImageKey {
                key: 0x00f6
                x: row3GetX(11)
                y: yRow3
            }
            ImageKey {
                key: 0x00e4
                x: row3GetX(12)
                y: yRow3
            }

            //Row 4
            ShiftKeyLeft {
                x: 16
                y: yRow4 + 4
            }
            ImageKey {
                key: 0x0079
                x: row4GetX(1)
                y: yRow4
            }
            ImageKey {
                key: 0x0078
                x: row4GetX(2)
                y: yRow4
            }
            ImageKey {
                key: 0x0063
                x: row4GetX(3)
                y: yRow4
            }
            ImageKey {
                key: 0x0076
                x: row4GetX(4)
                y: yRow4
            }
            ImageKey {
                key: 0x0062
                x: row4GetX(5)
                y: yRow4
            }
            ImageKey {
                key: 0x006e
                x: row4GetX(6)
                y: yRow4
            }
            ImageKey {
                key: 0x006d
                x: row4GetX(7)
                y: yRow4
            }
            ImageKey {
                key: 0x002c
                x: row4GetX(8)
                y: yRow4
            }
            ImageKey {
                key: 0x002e
                x: row4GetX(9)
                y: yRow4
            }
            ImageKey {
                key: 0x002d
                x: row4GetX(10)
                y: yRow4
            }
            CursorKey {
                key: Qt.Key_Up
                x: row4GetX(11) + 20
                y: yRow4 + 4
            }
            ShiftKeyRight {
                x: row4GetX(12) + 20
                y: yRow4 + 4
            }

            //Row 5
            FunctionsKey {
                key: Qt.Key_Context1
                functionKey: true;
                displayText: "é å"
                x: row5GetX(1)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === umlautPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === umlautPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = umlautPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context2
                functionKey: true;
                displayText: "% ( ]"
                x: row5GetX(2)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === specialPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === specialPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = specialPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context3
                functionKey: true;
                displayText: "☺"
                x: row5GetX(3)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === emoticonsPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === emoticonsPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = emoticonsPage
                    }
                }
            }
            SpaceKey {
                displayText: "Leerzeichen"
                weight: 1000
                x: row5GetX(4)
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Left
                x: row5GetX(12) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Down
                x: row5GetX(13) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Right
                x: row5GetX(14) + 32
                y: yRow5
            }
        }
    } // Component: mainPage
    Component {
        id: emoticonsPage
        KeyboardLayout {

            //Row 1
            ImageKey {
                key: 0x1f600
                x: row1GetX(1)
                y: yRow1
            }
            ImageKey {
                key: 0x1f602
                x: row1GetX(2)
                y: yRow1
            }
            ImageKey {
                key: 0x1f60a
                x: row1GetX(3)
                y: yRow1
            }
            ImageKey {
                key: 0x1f609
                x: row1GetX(4)
                y: yRow1
            }
            ImageKey {
                key: 0x1f60b
                x: row1GetX(5)
                y: yRow1
            }
            ImageKey {
                key: 0x1f60d
                x: row1GetX(6)
                y: yRow1
            }
            ImageKey {
                key: 0x1f618
                x: row1GetX(7)
                y: yRow1
            }
            ImageKey {
                key: 0x1f61c
                x: row1GetX(8)
                y: yRow1
            }
            ImageKey {
                key: 0x1f607
                x: row1GetX(9)
                y: yRow1
            }
            ImageKey {
                key: 0x1f633
                x: row1GetX(10)
                y: yRow1
            }
            ImageKey {
                key: 0x1f60e
                x: row1GetX(11)
                y: yRow1
            }
            ImageKey {
                key: 0x1f634
                x: row1GetX(12)
                y: yRow1
            }
            ImageKey {
                key: 0x1f632
                x: row1GetX(13)
                y: yRow1
            }
            BackspaceKey {
                x: row1GetX(14) - 4
                y: yRow1 + 3
            }

            //Row 2
            ImageKey {
                key: 0x1f610
                x: row2GetX(1)
                y: yRow2
            }
            ImageKey {
                key: 0x1f621
                x: row2GetX(2)
                y: yRow2
            }
            ImageKey {
                key: 0x1f608
                x: row2GetX(3)
                y: yRow2
            }
            ImageKey {
                key: 0x1f615
                x: row2GetX(4)
                y: yRow2
            }
            ImageKey {
                key: 0x1f622
                x: row2GetX(5)
                y: yRow2
            }
            ImageKey {
                key: 0x1f62d
                x: row2GetX(6)
                y: yRow2
            }
            ImageKey {
                key: 0x1f62b
                x: row2GetX(7)
                y: yRow2
            }
            ImageKey {
                key: 0x1f62c
                x: row2GetX(8)
                y: yRow2
            }
            ImageKey {
                key: 0x1f44d
                x: row2GetX(9)
                y: yRow2
            }
            ImageKey {
                key: 0x1f44e
                x: row2GetX(10)
                y: yRow2
            }
            ImageKey {
                key: 0x270c
                x: row2GetX(11)
                y: yRow2
            }
            ImageKey {
                key: 0x1f4aa
                x: row2GetX(12)
                y: yRow2
            }
            EnterKey {
                x: row2GetX(13) + 54
                y: yRow2 + 3
            }

            //Row 3
            ImageKey {
                key: 0x1f444
                x: row3GetX(1)
                y: yRow3
            }
            ImageKey {
                key: 0x1f4a9
                x: row3GetX(2)
                y: yRow3
            }
            ImageKey {
                key: 0x26a1
                x: row3GetX(3)
                y: yRow3
            }
            ImageKey {
                key: 0x2600
                x: row3GetX(4)
                y: yRow3
            }
            ImageKey {
                key: 0x2614
                x: row3GetX(5)
                y: yRow3
            }
            ImageKey {
                key: 0x1f4a8
                x: row3GetX(6)
                y: yRow3
            }
            ImageKey {
                key: 0x2744
                x: row3GetX(7)
                y: yRow3
            }
            ImageKey {
                key: 0x1f383
                x: row3GetX(8)
                y: yRow3
            }
            ImageKey {
                key: 0x1f384
                x: row3GetX(9)
                y: yRow3
            }
            ImageKey {
                key: 0x1f389
                x: row3GetX(10)
                y: yRow3
            }
            ImageKey {
                key: 0x1f451
                x: row3GetX(11)
                y: yRow3
            }
            ImageKey {
                key: 0x1f388
                x: row3GetX(12)
                y: yRow3
            }

            //Row 4
            ShiftKeyLeft {
                x: 16
                y: yRow4 + 4
            }
            ImageKey {
                key: 0x1f370
                x: row4GetX(1)
                y: yRow4
            }
            ImageKey {
                key: 0x1f382
                x: row4GetX(2)
                y: yRow4
            }
            ImageKey {
                key: 0x1f377
                x: row4GetX(3)
                y: yRow4
            }
            ImageKey {
                key: 0x1f378
                x: row4GetX(4)
                y: yRow4
            }
            ImageKey {
                key: 0x1f37b
                x: row4GetX(5)
                y: yRow4
            }
            ImageKey {
                key: 0x2764
                x: row4GetX(6)
                y: yRow4
            }
            ImageKey {
                key: 0x1f494
                x: row4GetX(7)
                y: yRow4
            }
            ImageKey {
                key: 0x1f3c1
                x: row4GetX(8)
                y: yRow4
            }
            ImageKey {
                key: 0x1f192
                 x: row4GetX(9)
                y: yRow4
            }
            ImageKey {
                key: 0x1f197
                x: row4GetX(10)
                y: yRow4
            }
            CursorKey {
                key: Qt.Key_Up
                x: row4GetX(11) + 20
                y: yRow4 + 4
            }
            ShiftKeyRight {
                x: row4GetX(12) + 20
                y: yRow4 + 4
            }

            //Row 5
            FunctionsKey {
                key: Qt.Key_Context1
                functionKey: true;
                displayText: "é å"
                x: row5GetX(1)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === umlautPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === umlautPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = umlautPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context2
                functionKey: true;
                displayText: "% ( ]"
                x: row5GetX(2)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === specialPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === specialPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = specialPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context3
                functionKey: true;
                displayText: "☺"
                x: row5GetX(3)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === emoticonsPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === emoticonsPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = emoticonsPage
                    }
                }
            }
            SpaceKey {
                displayText: "Leerzeichen"
                weight: 1000
                x: row5GetX(4)
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Left
                x: row5GetX(12) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Down
                x: row5GetX(13) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Right
                x: row5GetX(14) + 32
                y: yRow5
            }
        }
    } // Component: emoticonsPage

    Component {
        id: specialPage
        KeyboardLayout {
            //Row 1
            ImageKey {
                key: 0x005c
                x: row1GetX(1)
                y: yRow1
            }
            ImageKey {
                key: 0x002f
                x: row1GetX(2)
                y: yRow1
            }
            ImageKey {
                key: 0x005b
                x: row1GetX(3)
                y: yRow1
            }
            ImageKey {
                key: 0x005d
                x: row1GetX(4)
                y: yRow1
            }
            ImageKey {
                key: 0x0028
                x: row1GetX(5)
                y: yRow1
            }
            ImageKey {
                key: 0x0029
                x: row1GetX(6)
                y: yRow1
            }
            ImageKey {
                key: 0x007b
                x: row1GetX(7)
                y: yRow1
            }
            ImageKey {
                key: 0x007d
                x: row1GetX(8)
                y: yRow1
            }
            ImageKey {
                key: 0x007c
                x: row1GetX(9)
                y: yRow1
            }
            ImageKey {
                key: 0x00a1
                x: row1GetX(10)
                y: yRow1
            }
            ImageKey {
                key: 0x00bf
                x: row1GetX(11)
                y: yRow1
            }
            ImageKey {
                key: 0x0021
                x: row1GetX(12)
                y: yRow1
            }
            ImageKey {
                key: 0x003f
                x: row1GetX(13)
                y: yRow1
            }
            BackspaceKey {
                x: row1GetX(14) - 4
                y: yRow1 + 3
            }

            //Row 2
            ImageKey {
                key: 0x20ac
                x: row2GetX(1)
                y: yRow2
            }
            ImageKey {
                key: 0x00a3
                x: row2GetX(2)
                y: yRow2
            }
            ImageKey {
                key: 0x0024
                x: row2GetX(3)
                y: yRow2
            }
            ImageKey {
                key: 0x00a5
                x: row2GetX(4)
                y: yRow2
            }
            ImageKey {
                key: 0x00a7
                x: row2GetX(5)
                y: yRow2
            }
            ImageKey {
                key: 0x0025
                x: row2GetX(6)
                y: yRow2
            }
            ImageKey {
                key: 0x007e
                x: row2GetX(7)
                y: yRow2
            }
            ImageKey {
                key: 0x00d7
                x: row2GetX(8)
                y: yRow2
            }
            ImageKey {
                key: 0x00f7
                x: row2GetX(9)
                y: yRow2
            }
            ImageKey {
                key: 0x2013
                x: row2GetX(10)
                y: yRow2
            }
            ImageKey {
                key: 0x002b
                x: row2GetX(11)
                y: yRow2
            }
            ImageKey {
                key: 0x00ed
                x: row2GetX(12)
                y: yRow2
            }
            EnterKey {
                x: row2GetX(13) + 54
                y: yRow2 + 3
            }

            //Row 3
            ImageKey {
                key: 0x0040
                x: row3GetX(1)
                y: yRow3
            }
            ImageKey {
                key: 0x0026
                x: row3GetX(2)
                y: yRow3
            }
            ImageKey {
                key: 0x00ae
                x: row3GetX(3)
                y: yRow3
            }
            ImageKey {
                key: 0x00a9
                x: row3GetX(4)
                y: yRow3
            }
            ImageKey {
                key: 0x2122
                x: row3GetX(5)
                y: yRow3
            }
            ImageKey {
                key: 0x003c
                x: row3GetX(6)
                y: yRow3
            }
            ImageKey {
                key: 0x003e
                x: row3GetX(7)
                y: yRow3
            }
            ImageKey {
                key: 0x0023
                x: row3GetX(8)
                y: yRow3
            }
            ImageKey {
                key: 0x002a
                x: row3GetX(9)
                y: yRow3
            }
            ImageKey {
                key: 0x00b0
                x: row3GetX(10)
                y: yRow3
            }
            ImageKey {
                key: 0x0060
                x: row3GetX(11)
                y: yRow3
            }
            ImageKey {
                key: 0x0027
                x: row3GetX(12)
                y: yRow3
            }

            //Row 4
            ShiftKeyLeft {
                x: 16
                y: yRow4 + 4
            }
            ImageKey {
                key: 0x2022
                x: row4GetX(1)
                y: yRow4
            }
            ImageKey {
                key: 0x201e
                x: row4GetX(2)
                y: yRow4
            }
            ImageKey {
                key: 0x201c
                x: row4GetX(3)
                y: yRow4
            }
            ImageKey {
                key: 0x005f
                x: row4GetX(4)
                y: yRow4
            }
            ImageKey {
                key: 0x2026
                x: row4GetX(5)
                y: yRow4
            }
            ImageKey {
                key: 0x003a
                x: row4GetX(6)
                y: yRow4
            }
            ImageKey {
                key: 0x003b
                x: row4GetX(7)
                y: yRow4
            }
            ImageKey {
                key: 0x002c
                x: row4GetX(8)
                y: yRow4
            }
            ImageKey {
                key: 0x002e
                x: row4GetX(9)
                y: yRow4
            }
            ImageKey {
                key: 0x002d
                x: row4GetX(10)
                y: yRow4
            }
            CursorKey {
                key: Qt.Key_Up
                x: row4GetX(11) + 20
                y: yRow4 + 4
            }
            ShiftKeyRight {
                x: row4GetX(12) + 20
                y: yRow4 + 4
            }

            //Row 5
            FunctionsKey {
                key: Qt.Key_Context1
                functionKey: true;
                displayText: "é å"
                x: row5GetX(1)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === umlautPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === umlautPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = umlautPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context2
                functionKey: true;
                displayText: "% ( ]"
                x: row5GetX(2)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === specialPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === specialPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = specialPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context3
                functionKey: true;
                displayText: "☺"
                x: row5GetX(3)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === emoticonsPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === emoticonsPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = emoticonsPage
                    }
                }
            }
            SpaceKey {
                displayText: "Leerzeichen"
                weight: 1000
                x: row5GetX(4)
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Left
                x: row5GetX(12) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Down
                x: row5GetX(13) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Right
                x: row5GetX(14) + 32
                y: yRow5
            }

        }
    } // Component: specialPage

    Component {
        id: umlautPage
        KeyboardLayout {

            inputMode: InputEngine.Latin

            //Row 1
            ImageKey {
                key: 0x00e0
                x: row1GetX(1)
                y: yRow1
            }
            ImageKey {
                key: 0x00e1
                x: row1GetX(2)
                y: yRow1
            }
            ImageKey {
                key: 0x00e2
                x: row1GetX(3)
                y: yRow1
            }
            ImageKey {
                key: 0x00e3
                x: row1GetX(4)
                y: yRow1
            }
            ImageKey {
                key: 0x00e5
                x: row1GetX(5)
                y: yRow1
            }
            ImageKey {
                key: 0x00e6
                x: row1GetX(6)
                y: yRow1
            }
            ImageKey {
                key: 0x00e7
                x: row1GetX(7)
                y: yRow1
            }
            ImageKey {
                key: 0x00e8
                x: row1GetX(8)
                y: yRow1
            }
            ImageKey {
                key: 0x00e9
                x: row1GetX(9)
                y: yRow1
            }
            ImageKey {
                key: 0x00ea
                x: row1GetX(10)
                y: yRow1
            }
            ImageKey {
                key: 0x00eb
                x: row1GetX(11)
                y: yRow1
            }
            ImageKey {
                key: 0x00ec
                x: row1GetX(12)
                y: yRow1
            }
            /*
            ImageKey {
                key: 0x003f
                x: row1GetX(13)
                y: yRow1
            }
            */
            BackspaceKey {
                x: row1GetX(14) - 4
                y: yRow1 + 3
            }

            //Row 2
            ImageKey {
                key: 0x00ed
                x: row2GetX(1)
                y: yRow2
            }
            ImageKey {
                key: 0x00ee
                x: row2GetX(2)
                y: yRow2
            }
            ImageKey {
                key: 0x00ef
                x: row2GetX(3)
                y: yRow2
            }
            ImageKey {
                key: 0x00f0
                x: row2GetX(4)
                y: yRow2
            }
            ImageKey {
                key: 0x00f1
                x: row2GetX(5)
                y: yRow2
            }
            ImageKey {
                key: 0x00f2
                x: row2GetX(6)
                y: yRow2
            }
            ImageKey {
                key: 0x00f3
                x: row2GetX(7)
                y: yRow2
            }
            ImageKey {
                key: 0x00f4
                x: row2GetX(8)
                y: yRow2
            }
            ImageKey {
                key: 0x00f5
                x: row2GetX(9)
                y: yRow2
            }
            ImageKey {
                key: 0x00f8
                x: row2GetX(10)
                y: yRow2
            }
            ImageKey {
                key: 0x00f9
                x: row2GetX(11)
                y: yRow2
            }
            ImageKey {
                key: 0x00fc
                x: row2GetX(12)
                y: yRow2
            }
            EnterKey {
                x: row2GetX(13) + 54
                y: yRow2 + 3
            }

            //Row 3
            /*
            ImageKey {
                key: 0x0040
                x: row3GetX(1)
                y: yRow3
            }
            ImageKey {
                key: 0x0061
                x: row3GetX(2)
                y: yRow3
            }
            */
            ImageKey {
                key: 0x00fa
                x: row3GetX(3)
                y: yRow3
            }
            ImageKey {
                key: 0x00fb
                x: row3GetX(4)
                y: yRow3
            }
            ImageKey {
                key: 0x00fd
                x: row3GetX(5)
                y: yRow3
            }
            ImageKey {
                key: 0x00fe
                x: row3GetX(6)
                y: yRow3
            }
            ImageKey {
                key: 0x00ff
                x: row3GetX(7)
                y: yRow3
            }
            ImageKey {
                key: 0x0153
                x: row3GetX(8)
                y: yRow3
            }
            ImageKey {
                key: 0x0161
                x: row3GetX(9)
                y: yRow3
            }
            ImageKey {
                key: 0x017e
                x: row3GetX(10)
                y: yRow3
            }
            ImageKey {
                key: 0x00f6
                x: row3GetX(11)
                y: yRow3
            }
            ImageKey {
                key: 0x00e4
                x: row3GetX(12)
                y: yRow3
            }

            //Row 4
            ShiftKeyLeft {
                x: 16
                y: yRow4 + 4
            }
            ImageKey {
                key: 0x0079
                x: row4GetX(1)
                y: yRow4
            }
            ImageKey {
                key: 0x0078
                x: row4GetX(2)
                y: yRow4
            }
            ImageKey {
                key: 0x0063
                x: row4GetX(3)
                y: yRow4
            }
            ImageKey {
                key: 0x0076
                x: row4GetX(4)
                y: yRow4
            }
            ImageKey {
                key: 0x0062
                x: row4GetX(5)
                y: yRow4
            }
            ImageKey {
                key: 0x006e
                x: row4GetX(6)
                y: yRow4
            }
            ImageKey {
                key: 0x006d
                x: row4GetX(7)
                y: yRow4
            }
            ImageKey {
                key: 0x002c
                x: row4GetX(8)
                y: yRow4
            }
            ImageKey {
                key: 0x002e
                x: row4GetX(9)
                y: yRow4
            }
            ImageKey {
                key: 0x002d
                x: row4GetX(10)
                y: yRow4
            }
            CursorKey {
                key: Qt.Key_Up
                x: row4GetX(11) + 20
                y: yRow4 + 4
            }
            ShiftKeyRight {
                x: row4GetX(12) + 20
                y: yRow4 + 4
            }

            //Row 5
            FunctionsKey {
                key: Qt.Key_Context1
                functionKey: true;
                displayText: "é å"
                x: row5GetX(1)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === umlautPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === umlautPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = umlautPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context2
                functionKey: true;
                displayText: "% ( ]"
                x: row5GetX(2)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === specialPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === specialPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = specialPage
                    }
                }
            }
            FunctionsKey {
                key: Qt.Key_Context3
                functionKey: true;
                displayText: "☺"
                x: row5GetX(3)
                y: yRow5
                highlight: keyboardLoader.sourceComponent === emoticonsPage ? true : false
                onClicked: {
                    if (keyboardLoader.sourceComponent === emoticonsPage) {
                        keyboardLoader.sourceComponent = mainPage
                    } else {
                        keyboardLoader.sourceComponent = emoticonsPage
                    }
                }
            }
            SpaceKey {
                displayText: "Leerzeichen"
                weight: 1000
                x: row5GetX(4)
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Left
                x: row5GetX(12) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Down
                x: row5GetX(13) + 32
                y: yRow5
            }
            CursorKey {
                key: Qt.Key_Right
                x: row5GetX(14) + 32
                y: yRow5
            }
        }
    } // Component: umlautPage
} // KeyboardLayoutLoader
