import QtQuick 2.0

Rectangle {
    width: 48
    height:  48
    color: "#11AAFF"
    border.color: Qt.lighter(color)
    property alias text: textBox.text
    Text {
        id: textBox
        anchors.centerIn: parent
        anchors.fill: parent
        text: qsTr("text")
        font.pixelSize: 12
    }
}
