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
import QtQuick.Layouts 1.0
import QtQuick.VirtualKeyboard 2.1


KeyboardLayout {

    inputMethod: PlainInputMethod {}
    inputMode: InputEngine.Numeric

    //Row 1
    ImageKey {
        key: 0x0031
        x: 516
        y: 42
    }

    ImageKey {
        key: 0x0032
        x: 604
        y: 42
    }

    ImageKey {
        key: 0x0033
        x: 692
        y: 42
    }
    BackspaceKey {
        x: 778
        y: 46
    }

    //Row 2
    ImageKey {
        key: 0x0034
        x: 516
        y: 42 + 88
    }

    ImageKey {
        key: 0x0035
        x: 604
        y: 42 + 88
    }

    ImageKey {
        key: 0x0036
        x: 692
        y: 42 + 88
    }

    //Row 3
    ImageKey {
        key: 0x0037
        x: 516
        y: 42 + 88 + 88
    }

    ImageKey {
        key: 0x0038
        x: 604
        y: 42 + 88 + 88
    }

    ImageKey {
        key: 0x0039
        x: 692
        y: 42 + 88 + 88
    }

    //Row 4
    ImageKey {
        key: 0x002b
        x: 516
        y: 42 + 88 + 88 + 88
    }

    ImageKey {
        key: 0x0030
        x: 604
        y: 42 + 88 + 88 + 88
    }
}
