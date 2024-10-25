import QtQuick 2.0

Rectangle {
    width: 48
    height:  48
    color: "yellow"
    border.color: Qt.lighter(color)
    property alias text: textBox.text
    Text {
        id: textBox
        anchors.centerIn: parent
        text: qsTr("text")
        font.pixelSize: 30
    }
}
