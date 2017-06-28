import QtQuick 2.0

Item {
    id: layout

    property bool ready: false

    onChildrenChanged: performLayout()
    onWidthChanged: performLayout()
    onHeightChanged: performLayout()

    anchors.fill: parent

    function performLayout() {
        /* Nothing to do, just let the keys position them selves */
    }
}
