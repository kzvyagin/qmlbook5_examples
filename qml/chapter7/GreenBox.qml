import QtQuick 2.0



Rectangle {
    width: 48
    height:  48
    color: "#117025"
    border.color: Qt.lighter(color)
    property alias text: textBox.text
    property alias textRotarion: textBox.rotation
    Text {
        id: textBox
        anchors.centerIn: parent
        text: qsTr("text")
        font.pixelSize: 30
    }
}
