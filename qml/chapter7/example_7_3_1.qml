import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3_1"
    allowedOrientations: Orientation.All
    Rectangle{
        anchors.centerIn: parent
        width: 800
        height: 800

        ListView{
            anchors.fill: parent
            anchors.margins: 20
            spacing: 4
            clip: true
            model: 100
            orientation: ListView.Horizontal
            delegate: numberDelegate

        }

        Component{
            id:numberDelegate
            GreenBox{
                id: boxbox
                width: 40
                height: 100
                text: index
                textRotarion: 270
            }
        }
    }
}
