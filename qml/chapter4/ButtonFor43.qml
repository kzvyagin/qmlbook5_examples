import QtQuick 2.0
Item{
    property alias text: textButton.text
    property alias textStatus: status.text
    anchors.fill: parent
    Rectangle {
        id: button
        x: 12; y:12
        width: 116 ; height: 26
        color: "lightblue"
        border.color: "blue"
        Text{
            id: textButton
            anchors.centerIn: parent
            text: "Start"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                status.text ="Button clicked!"
            }

        }
    }

    Text{
        id: status
        x: 12; y :76
        width: 116; height: 26
        text: "waiting..."
        horizontalAlignment: Text.AlignHCenter
    }

}
