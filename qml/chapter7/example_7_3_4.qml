import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        width: 400
        height: 400
        anchors.centerIn: parent

        GridView{
            id: view
            anchors.fill: parent
            anchors.margins: 20

            clip: true

            model: 100

            cellHeight: 45
            cellWidth: 45
            delegate: numberDelegate
        }

        Component{
            id: numberDelegate

            GreenBox{
                id: gbox
                width: 40
                height: 40
                text: index
                border.color: Qt.darker(gbox.color)

            }
        }

    }
}
