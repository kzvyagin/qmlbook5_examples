import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: pageId452
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]

    Rectangle{
        id: darkSquare
        width: 252
        height:  252
        color: Qt.darker("darkgray")
        anchors.centerIn: parent


        Grid{
            anchors.fill: parent
            anchors.margins: 8
            spacing: 4
            Repeater{
                model:16
                Rectangle{
                   width: 56; height: 56
                   property int colorIndex: Math.floor(Math.random()*3)
                   color: pageId452.colorArray[colorIndex]
                   border.color: Qt.lighter(color)
                   Text{
                       anchors.centerIn: parent
                       color: "#f0f0f0"
                       text: "Cell" +index
                       font.pixelSize: 15
                   }

                }
            }
        }

    }


}
