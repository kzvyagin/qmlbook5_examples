import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "example_4_3"
    allowedOrientations: Orientation.All

    ButtonFor43{
        id: mySuperButton
        text: "AAAA"
        MouseArea{
            anchors.fill: parent
            onClicked: {
            console.log(mySuperButton.textStatus)
            }
        }
    }

    Button2For43{
        id: mysuperbutton2
        text: "Start"
        x: parent.width/2 ; y: parent.height/2
        onClicked: {
            status.text="Button clicked"
        }
    }

    Text{
        id: status
        anchors.top: mysuperbutton2.bottom
        anchors.margins: 20
        width: 116 ;height: 26
        text: "wating ..."
    }
}
