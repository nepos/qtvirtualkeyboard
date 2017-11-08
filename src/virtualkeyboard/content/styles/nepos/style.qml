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


import QtQuick 2.7
import QtQuick.VirtualKeyboard 2.1
import QtQuick.VirtualKeyboard.Styles 2.1

KeyboardStyle {

    id: currentStyle

    readonly property bool compactSelectionList: [InputEngine.Pinyin, InputEngine.Cangjie, InputEngine.Zhuyin].indexOf(InputContext.inputEngine.inputMode) !== -1
    // readonly property string fontFamily: neposFont.name
    readonly property real keyBackgroundMargin: 0 //Math.round(13 * scaleHint)
    readonly property real keyContentMargin: 0 //Math.round(45 * scaleHint)
    readonly property real keyIconScale: scaleHint * 0.6

    readonly property string resourcePath: "QtQuick/VirtualKeyboard/content/styles/nepos/"
    readonly property string resourcePrefix: "qrc:/" + resourcePath


    // Nepos color values
    readonly property string neposKeyboardBackgroundColor: "#000000"
    readonly property string neposHighlightColor: "#7fdcff"

    readonly property string neposFontColorDark: "#000000"
    readonly property string neposFontColorBright: "#FFFFFF"


    readonly property string neposDefaultBackgroundColor: "#565658"
    readonly property string neposOperatingKeyColor: "#ababab"

    // Nepos key fade values
    readonly property int neposKeyReleaseAnimationDuration: 300

    keyboardDesignWidth: 2560
    keyboardDesignHeight: 800

    keyboardBackground: Rectangle {
        color: neposKeyboardBackgroundColor
    }

    keyPanel: KeyPanel {
        Rectangle {
            id: keyBackground
            width: 72
            height: 72


            radius: width / 2
            color: "#383533"
            //anchors.fill: parent
            anchors.margins: keyBackgroundMargin


            Text {
                id: keySmallText
                text: control.smallText
                visible: control.smallTextVisible
                color: "gray"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.margins: keyContentMargin / 3
                font {
                    family: fontFamily
                    weight: Font.Normal
                    pixelSize: 38 * scaleHint
                    capitalization: control.uppercased ? Font.AllUppercase : Font.MixedCase
                }
            }
            Text {
                id: keyText
                text: control.displayText
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                anchors.leftMargin: keyContentMargin
                anchors.topMargin: control.smallTextVisible ? keyContentMargin * 1.2 : keyContentMargin
                anchors.rightMargin: keyContentMargin
                anchors.bottomMargin: control.smallTextVisible ? keyContentMargin * 0.8 : keyContentMargin
                font {
                    family: fontFamily
                    weight: Font.Normal
                    pixelSize: 52 * scaleHint
                    capitalization: control.uppercased ? Font.AllUppercase : Font.MixedCase
                }
            }

            Rectangle {
                clip: true
                width: 64
                height: 64

                Image {
                    id: emoticon
                    anchors.centerIn: parent
                    //fillMode: Image.Pad
                    smooth: false
                    source: "https://a.slack-edge.com/bfaba/img/emoji_2016_06_08/sheet_apple_64_indexed_256colors.png"
                    //width: 64
                    //height: 64
                }
            }

        }
        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: keyBackground
                    opacity: 0.75
                }
                PropertyChanges {
                    target: keyText
                    opacity: 0.5
                }
            },
            State {
                name: "disabled"
                when: !control.enabled
                PropertyChanges {
                    target: keyBackground
                    opacity: 0.75
                }
                PropertyChanges {
                    target: keyText
                    opacity: 0.05
                }
            }
        ]
    }

    // image key panel
    imageKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: imageKeyIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
            width: 72
            height: 72
        }

        Image {
            id: imageKeyIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
            width: 72
            height: 72
        }

        Image {
            id: imageKeyIconEmoji
            anchors.centerIn: parent
            source: "image://sprite/1/1"
            width: 48
            height: 48
        }

        /*
        Text {
            id: imageKeyText
            anchors.centerIn: parent
            smooth: false

            text:  control.displayText
            color: neposFontColorBright

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 38
                capitalization: control.uppercased ? Font.AllUppercase : Font.MixedCase
            }
        }
        */

        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: imageKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: imageKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.pressed
                PropertyChanges {
                    target: imageKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: imageKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: imageKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }

    // cursor key panel
    cursorKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: cursorKeyIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
            width: 72
            height: 64
        }

        Image {
            id: cursorKeyIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
            width: 72
            height: 64
        }

        Image {
            id: cursorIcon
            anchors.centerIn: parent
            source: {
                if (control.key === Qt.Key_Left) resourcePrefix + "images/icon_arrow_left.svg"
                if (control.key === Qt.Key_Right) resourcePrefix + "images/icon_arrow_right.svg"
                if (control.key === Qt.Key_Up) resourcePrefix + "images/icon_arrow_up.svg"
                if (control.key === Qt.Key_Down) resourcePrefix + "images/icon_arrow_down.svg"
            }
            width: 72
            height: 64
        }

        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: cursorKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: cursorKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.pressed
                PropertyChanges {
                    target: cursorKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: cursorKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: cursorKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }


    // functions key panel
    functionsKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: functionsKeyIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
            width: 72
            height: 64
        }

        Image {
            id: functionsKeyIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
            width: 72
            height: 64
        }

        Text {
            id: functionsKeyText
            anchors.centerIn: parent
            smooth: false

            text: control.displayText
            color: neposFontColorDark

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 24
            }
        }

        states: [
            State {
                name: "pressed"
                when: control.highlight
                PropertyChanges {
                    target: functionsKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: functionsKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.highlight
                PropertyChanges {
                    target: functionsKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: functionsKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: functionsKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }

    // enter key panel
    enterKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: enterKeyIcon
            anchors.top: parent.top
            anchors.left: parent.left
            smooth: false
            source: resourcePrefix + control.image
            width: 108
            height: 145
        }

        Image {
            id: enterKeyIconHighlight
            anchors.top: parent.top
            anchors.left: parent.left
            smooth: false
            source: resourcePrefix + control.image_highlight
            width: 108
            height: 145
        }

        Text {
            id: enterKeyText

            anchors.topMargin: 21

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right:  parent.right

            smooth: false

            text: control.displayText
            color: neposFontColorBright

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 20
            }

        }

        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: enterKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: enterKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.pressed
                PropertyChanges {
                    target: enterKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: enterKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: enterKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }

    languageKeyPanel: KeyPanel {
        Rectangle {
            id: languageKeyBackground
            radius: 5
            color: "#35322f"
            anchors.fill: parent

            Image {
                id: languageKeyIcon
                anchors.centerIn: parent
                sourceSize.width: 144 * keyIconScale
                sourceSize.height: 144 * keyIconScale
                smooth: false
                source: resourcePrefix + "images/globe-868482.svg"
            }
        }
        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: languageKeyBackground
                    opacity: 0.80
                }
                PropertyChanges {
                    target: languageKeyIcon
                    opacity: 0.75
                }
            },
            State {
                name: "disabled"
                when: !control.enabled
                PropertyChanges {
                    target: languageKeyBackground
                    opacity: 0.8
                }
                PropertyChanges {
                    target: languageKeyIcon
                    opacity: 0.2
                }
            }
        ]
    }

    hideKeyPanel: KeyPanel {
        Rectangle {
            id: hideKeyBackground
            radius: 5
            color: "#1e1b18"
            anchors.fill: parent

            Image {
                id: hideKeyIcon
                anchors.centerIn: parent
                sourceSize.width: 144 * keyIconScale
                sourceSize.height: 127 * keyIconScale
                smooth: false
                source: resourcePrefix + "images/hidekeyboard-868482.svg"
            }
        }
        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: hideKeyBackground
                    opacity: 0.80
                }
                PropertyChanges {
                    target: hideKeyIcon
                    opacity: 0.6
                }
            },
            State {
                name: "disabled"
                when: !control.enabled
                PropertyChanges {
                    target: hideKeyBackground
                    opacity: 0.8
                }
                PropertyChanges {
                    target: hideKeyIcon
                    opacity: 0.2
                }
            }
        ]
    }

    shiftKeyLeftPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: shiftKeyLeftIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
        }

        Image {
            id: shiftKeyLeftIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
        }

        Image {
            id: shiftKeyIcon

            width: 38
            height: 38

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 15
            anchors.leftMargin: 17

            source: resourcePrefix + "images/icon_shift.svg"

        }

        Text {
            id: shiftKeyLeftText

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left

            anchors.topMargin: 5
            anchors.leftMargin: 79

            smooth: false

            text: control.displayText
            color: neposFontColorDark

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 20
            }

        }

        states: [
            State {
                name: "pressed"
                when: InputContext.shift
                PropertyChanges {
                    target: shiftKeyLeftIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: shiftKeyLeftIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !InputContext.shift
                PropertyChanges {
                    target: shiftKeyLeftIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: shiftKeyLeftIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: shiftKeyLeftIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
            PropertyAnimation { target: shiftKeyLeftIcon; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }

    }

    shiftKeyRightPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: shiftKeyRightIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
        }

        Image {
            id: shiftKeyRightIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
        }

        Text {
            id: shiftKeyRightText
            anchors.centerIn: parent
            smooth: false

            anchors.left: parent.left + 79
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            text: control.displayText
            color: neposFontColorBright

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 52 * scaleHint
            }

        }

        states: [
            State {
                name: "pressed"
                when: InputContext.shift
                PropertyChanges {
                    target: shiftKeyRightIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: shiftKeyRightIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !InputContext.shift
                PropertyChanges {
                    target: shiftKeyRightIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: shiftKeyRightIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: shiftKeyRightIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
            PropertyAnimation { target: shiftKeyRightIcon; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }

    }




    backspaceKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: backspaceKeyIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
        }

        Image {
            id: backspaceKeyIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
        }

        Text {
            id: backspaceKeyText

            anchors.topMargin: 18
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.left: parent.left

            smooth: false

            text: control.displayText
            color: neposFontColorBright

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 20
            }

        }

        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: backspaceKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: backspaceKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.pressed
                PropertyChanges {
                    target: backspaceKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: backspaceKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: backspaceKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }


    spaceKeyPanel: KeyPanel {

        FontLoader {
            id: neposFont
            source: resourcePrefix + "fonts/Roboto-Medium.ttf"
        }

        Image {
            id: spaceKeyIcon
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image
            width: 720
            height: 64
        }

        Image {
            id: spaceKeyIconHighlight
            anchors.centerIn: parent
            smooth: false
            source: resourcePrefix + control.image_highlight
            width: 720
            height: 64
        }

        Text {
            id: spaceKeyText
            anchors.centerIn: parent
            smooth: false

            text: control.displayText
            color: neposFontColorBright

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font {
                family: neposFont.name
                weight: Font.Normal
                pixelSize: 20
            }

        }

        states: [
            State {
                name: "pressed"
                when: control.pressed
                PropertyChanges {
                    target: spaceKeyIcon
                    opacity: 0
                }
                PropertyChanges {
                    target: spaceKeyIconHighlight
                    opacity: 1
                }
            },
            State {
                name: "released"
                when: !control.pressed
                PropertyChanges {
                    target: spaceKeyIcon
                    opacity: 1
                }
                PropertyChanges {
                    target: spaceKeyIconHighlight
                    opacity: 0
                }
            }
        ]

        transitions: Transition {
            from: "pressed"
            to: "released"
            PropertyAnimation { target: spaceKeyIconHighlight; property: "opacity"; duration: neposKeyReleaseAnimationDuration }
        }
    }


    alternateKeysListItemWidth: 99 * scaleHint
    alternateKeysListItemHeight: 150 * scaleHint
    alternateKeysListDelegate: Item {
        id: alternateKeysListItem
        width: alternateKeysListItemWidth
        height: alternateKeysListItemHeight
        Text {
            id: listItemText
            text: model.text
            color: "#868482"
            font {
                family: fontFamily
                weight: Font.Normal
                pixelSize: 52 * scaleHint
            }
            anchors.centerIn: parent
        }
        states: State {
            name: "current"
            when: alternateKeysListItem.ListView.isCurrentItem
            PropertyChanges {
                target: listItemText
                color: "white"
            }
        }
    }
    alternateKeysListHighlight: Rectangle {
        color: "#5d5b59"
        radius: 5
    }
    alternateKeysListBackground: Rectangle {
        color: "#1e1b18"
        radius: 5
    }





    selectionListHeight: 85 * scaleHint
    selectionListDelegate: SelectionListItem {
        id: selectionListItem
        width: Math.round(selectionListLabel.width + selectionListLabel.anchors.leftMargin * 2)
        Text {
            id: selectionListLabel
            anchors.left: parent.left
            anchors.leftMargin: Math.round((compactSelectionList ? 50 : 140) * scaleHint)
            anchors.verticalCenter: parent.verticalCenter
            text: decorateText(display, wordCompletionLength)
            color: "#80c342"
            font {
                family: fontFamily
                weight: Font.Normal
                pixelSize: 44 * scaleHint
            }
            function decorateText(text, wordCompletionLength) {
                if (wordCompletionLength > 0) {
                    return text.slice(0, -wordCompletionLength) + '<u>' + text.slice(-wordCompletionLength) + '</u>'
                }
                return text
            }
        }
        Rectangle {
            id: selectionListSeparator
            width: 4 * scaleHint
            height: 36 * scaleHint
            radius: 2
            color: "#35322f"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.left
        }
        states: State {
            name: "current"
            when: selectionListItem.ListView.isCurrentItem
            PropertyChanges {
                target: selectionListLabel
                color: "white"
            }
        }
    }
    selectionListBackground: Rectangle {
        color: "#1e1b18"
    }
    selectionListAdd: Transition {
        NumberAnimation { property: "y"; from: wordCandidateView.height; duration: 200 }
        NumberAnimation { property: "opacity"; from: 0; to: 1; duration: 200 }
    }
    selectionListRemove: Transition {
        NumberAnimation { property: "y"; to: -wordCandidateView.height; duration: 200 }
        NumberAnimation { property: "opacity"; to: 0; duration: 200 }
    }

    navigationHighlight: Rectangle {
        color: "transparent"
        border.color: "yellow"
        border.width: 5
    }

    traceInputKeyPanelDelegate: TraceInputKeyPanel {

        Rectangle {
            id: traceInputKeyPanelBackground
            radius: 5
            color: "#35322f"
            anchors.fill: parent

            Text {
                id: hwrInputModeIndicator
                visible: control.patternRecognitionMode === InputEngine.HandwritingRecoginition
                text: InputContext.inputEngine.inputMode === InputEngine.Latin ? "Abc" : "123"
                color: "white"
                anchors.left: parent.left
                anchors.top: parent.top

                font {
                    family: fontFamily
                    weight: Font.Normal
                    pixelSize: 44 * scaleHint
                    capitalization: {
                        if (InputContext.capsLock)
                            return Font.AllUppercase
                        if (InputContext.shift)
                            return Font.MixedCase
                        return Font.AllLowercase
                    }
                }
            }
        }
        Canvas {
            id: traceInputKeyGuideLines
            anchors.fill: traceInputKeyPanelBackground
            opacity: 0.1
            onPaint: {
                console.log("### CHECK HERE")

                var ctx = getContext("2d")
                ctx.lineWidth = 1
                ctx.strokeStyle = Qt.rgba(0xFF, 0xFF, 0xFF)
                ctx.clearRect(0, 0, width, height)
                var i
                if (control.horizontalRulers) {
                    for (i = 0; i < control.horizontalRulers.length; i++) {
                        ctx.beginPath()
                        ctx.moveTo(0, control.horizontalRulers[i])
                        ctx.lineTo(width, control.horizontalRulers[i])
                        ctx.stroke()
                    }
                }
                if (control.verticalRulers) {
                    for (i = 0; i < control.verticalRulers.length; i++) {
                        ctx.beginPath()
                        ctx.moveTo(control.verticalRulers[i], 0)
                        ctx.lineTo(control.verticalRulers[i], height)
                        ctx.stroke()
                    }
                }
            }
        }
    }

    traceCanvasDelegate: TraceCanvas {
        id: traceCanvas
        onAvailableChanged: {
            if (!available)
                return
            var ctx = getContext("2d")
            if (parent.canvasType === "fullscreen") {
                ctx.lineWidth = 10
                ctx.strokeStyle = Qt.rgba(0, 0, 0)
            } else {
                ctx.lineWidth = 10 * scaleHint
                ctx.strokeStyle = Qt.rgba(0xFF, 0xFF, 0xFF)
            }
            ctx.lineCap = "round"
            ctx.fillStyle = ctx.strokeStyle
        }
        autoDestroyDelay: 800
        onTraceChanged: if (trace === null) opacity = 0
        Behavior on opacity { PropertyAnimation { easing.type: Easing.OutCubic; duration: 150 } }
    }

    popupListDelegate: SelectionListItem {
        property real cursorAnchor: popupListLabel.x + popupListLabel.width
        id: popupListItem
        width: popupListLabel.width + popupListLabel.anchors.leftMargin * 2
        height: popupListLabel.height + popupListLabel.anchors.topMargin * 2
        Text {
            id: popupListLabel
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: popupListLabel.height / 2
            anchors.topMargin: popupListLabel.height / 3
            text: decorateText(display, wordCompletionLength)
            color: "#5CAA15"
            font {
                family: fontFamily
                weight: Font.Normal
                pixelSize: Qt.inputMethod.cursorRectangle.height * 0.8
            }
            function decorateText(text, wordCompletionLength) {
                if (wordCompletionLength > 0) {
                    return text.slice(0, -wordCompletionLength) + '<u>' + text.slice(-wordCompletionLength) + '</u>'
                }
                return text
            }
        }
        states: State {
            name: "current"
            when: popupListItem.ListView.isCurrentItem
            PropertyChanges {
                target: popupListLabel
                color: "black"
            }
        }
    }

    popupListBackground: Item {
        Rectangle {
            width: parent.width
            height: parent.height
            color: "white"
            border {
                width: 1
                color: "#929495"
            }
        }
    }

    popupListAdd: Transition {
        NumberAnimation { property: "opacity"; from: 0; to: 1.0; duration: 200 }
    }

    popupListRemove: Transition {
        NumberAnimation { property: "opacity"; to: 0; duration: 200 }
    }
}

