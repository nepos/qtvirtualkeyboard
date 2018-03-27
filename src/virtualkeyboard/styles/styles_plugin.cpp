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

#include "styles_plugin.h"
#include "svgimageprovider.h"
#include "spriteimageprovider.h"

#include <qqml.h>
#include <QtCore/QLibraryInfo>

/*!
    \qmlmodule QtQuick.VirtualKeyboard.Styles 2.2
    \title Qt Quick Virtual Keyboard Styles QML Types
    \ingroup qmlmodules

    \brief Provides styling for Qt Virtual Keyboard.

    The QML types can be imported into your application using the following
    import statements in your .qml file:

    \code
    import QtQuick.VirtualKeyboard.Styles 2.2
    \endcode
*/

void QtVirtualKeyboardStylesPlugin::registerTypes(const char *uri)
{
    Q_INIT_RESOURCE(styles);
    const QString path(QStringLiteral("qrc:///QtQuick/VirtualKeyboard/Styles/content/"));
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 1, 0, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 1, 1, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 1, 2, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 1, 3, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 2, 0, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 2, 1, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyboardStyle.qml")), uri, 2, 2, "KeyboardStyle");
    qmlRegisterType(QUrl(path + QLatin1String("KeyIcon.qml")), uri, 1, 0, "KeyIcon");
    qmlRegisterType(QUrl(path + QLatin1String("KeyIcon.qml")), uri, 2, 0, "KeyIcon");
    qmlRegisterType(QUrl(path + QLatin1String("KeyPanel.qml")), uri, 1, 0, "KeyPanel");
    qmlRegisterType(QUrl(path + QLatin1String("KeyPanel.qml")), uri, 2, 0, "KeyPanel");
    qmlRegisterType(QUrl(path + QLatin1String("SelectionListItem.qml")), uri, 1, 0, "SelectionListItem");
    qmlRegisterType(QUrl(path + QLatin1String("SelectionListItem.qml")), uri, 2, 0, "SelectionListItem");
    qmlRegisterType(QUrl(path + QLatin1String("TraceInputKeyPanel.qml")), uri, 2, 0, "TraceInputKeyPanel");
    qmlRegisterType(QUrl(path + QLatin1String("TraceCanvas.qml")), uri, 2, 0, "TraceCanvas");
}

void QtVirtualKeyboardStylesPlugin::initializeEngine(QQmlEngine *engine, const char *uri)
{
    Q_UNUSED(uri)
    engine->addImageProvider(QStringLiteral("qtvkbsvg"), new SvgImageProvider());

    auto spriteImageProvider = new SpriteImageProvider();
    spriteImageProvider->setIconHeight(64);
    spriteImageProvider->setIconWidth(64);

    const QString path(QStringLiteral(":/QtQuick/VirtualKeyboard/content/styles/nepos/images/sheet_apple_64_indexed_256colors.png"));
    spriteImageProvider->setImage(path);

    // Row 1
    spriteImageProvider->addUnicode(0x1f600, {27, 21});
    spriteImageProvider->addUnicode(0x1f602, {27, 23});
    spriteImageProvider->addUnicode(0x1f60a, {27, 31});
    spriteImageProvider->addUnicode(0x1f609, {27, 30});
    spriteImageProvider->addUnicode(0x1f60b, {27, 32});
    spriteImageProvider->addUnicode(0x1f60d, {27, 34});
    spriteImageProvider->addUnicode(0x1f618, {28,  4});
    spriteImageProvider->addUnicode(0x1f61c, {28,  8});
    spriteImageProvider->addUnicode(0x1f607, {27, 28});
    spriteImageProvider->addUnicode(0x1f633, {28, 31});
    spriteImageProvider->addUnicode(0x1f60e, {27, 35});
    spriteImageProvider->addUnicode(0x1f634, {28, 32});
    spriteImageProvider->addUnicode(0x1f632, {28, 30});

    // Row 2
    spriteImageProvider->addUnicode(0x1f610, {27, 37});
    spriteImageProvider->addUnicode(0x1f621, {28, 13});
    spriteImageProvider->addUnicode(0x1f608, {28, 29});
    spriteImageProvider->addUnicode(0x1f615, {28, 01});
    spriteImageProvider->addUnicode(0x1f622, {28, 22});
    spriteImageProvider->addUnicode(0x1f62D, {28, 25});
    spriteImageProvider->addUnicode(0x1f62B, {28, 23});
    spriteImageProvider->addUnicode(0x1f62C, {28, 24});
    spriteImageProvider->addUnicode(0x1f44d, {16, 10});
    spriteImageProvider->addUnicode(0x1f44e, {16, 16});
    spriteImageProvider->addUnicode( 0x270c, { 4, 22});
    spriteImageProvider->addUnicode(0x1f4aa, {21, 23});

    // Row 3
    spriteImageProvider->addUnicode(0x1f444, {20, 33});
    spriteImageProvider->addUnicode(0x1f4a9, {21, 22});
    spriteImageProvider->addUnicode(0x26a1,  { 3, 14});
    spriteImageProvider->addUnicode(0x2600,  { 2,  1});
    spriteImageProvider->addUnicode(0x2614,  { 2,  3});
    spriteImageProvider->addUnicode(0x1f4a8, { 7, 23});
    spriteImageProvider->addUnicode(0x2744 , { 5,  2});
    spriteImageProvider->addUnicode(0x1f383, { 9, 28});
    spriteImageProvider->addUnicode(0x1f384, { 9, 29});
    spriteImageProvider->addUnicode(0x1f389, { 9, 39});
    spriteImageProvider->addUnicode(0x1f451, {16, 34});
    spriteImageProvider->addUnicode(0x1f388, { 9, 38});

    // Row 4
    spriteImageProvider->addUnicode(0x1f370, { 9,  9});
    spriteImageProvider->addUnicode(0x1f382, { 9, 27});
    spriteImageProvider->addUnicode(0x1f377, { 9, 16});
    spriteImageProvider->addUnicode(0x1f378, { 9, 17});
    spriteImageProvider->addUnicode(0x1f37B, { 9, 20});
    spriteImageProvider->addUnicode(0x2764 , { 2, 41});
    spriteImageProvider->addUnicode(0x1f494, {21,  1});
    spriteImageProvider->addUnicode(0x1f3c1, {11,  8});
    spriteImageProvider->addUnicode(0x1f192, { 5, 39});
    spriteImageProvider->addUnicode(0x1f197, { 6,  3});

    engine->addImageProvider(QStringLiteral("sprite"), spriteImageProvider);
}

