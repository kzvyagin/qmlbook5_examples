import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle{
        id: rect1
        x: 12 ; y:12
        width: 300 ; height: 100
        color: "lightgreen"
        MouseArea{
            id: area1
            width: parent.width
            height: parent.height
            onClicked: rect2.visible= !rect2.visible
        }
    }
    Rectangle{
        id: rect2
        x: 12 ; y:312
        width: 300 ;height: 100
        border.color: "lightblue"
        border.width: 4
        radius: 8
    }
}
