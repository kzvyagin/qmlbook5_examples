import QtQuick 2.0
Rectangle{
    id: root
    property alias text: label.text
    signal clicked

    width: 116 ;height: 200
    color: "green"
    Text{
        id: label
        anchors.centerIn: parent
        text: "Status"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
        root.clicked()
        }
    }
}
