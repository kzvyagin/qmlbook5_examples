import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        id: back
        width: 400
        height: 400
        anchors.centerIn: parent
        ListView{
            id: view
            anchors.fill: parent
            anchors.margins: 20

            clip: true
            model: 100
            delegate: numberDelegate
            spacing:  5

            highlight: highlitedComponent
            focus: true

        }

        Component{
            id: highlitedComponent
            GreenBox{
                width: view.widt
                text: "" //  set text to empty string, because Box only like a highlite bar UNDER listview item
            }
        }

        Component{
            id: numberDelegate

            Rectangle{
                width: view.width-20
                height: 40
                border.color: Qt.lighter("green")
                color: "#00000000"// transparent color to make highlight element visible
                Text{
                    anchors.centerIn: parent
                    font.pixelSize: 30
                    text:index
                }
            }
        }
    }
}
