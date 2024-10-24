import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_x_x"
    allowedOrientations: Orientation.All
    Rectangle{
        anchors.centerIn: parent
        width: 400
        height: 800

        ListView{
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            spacing: 5
            model: 100
            delegate: numberDelegate
        }

        Component{
            id: numberDelegate
            GreenBox{
                id: boxbox
                width: 390
                height:40
                text: index


            }
        }
    }
}
