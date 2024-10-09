import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2"
    allowedOrientations: Orientation.All
    Rectangle {
        id: rect1
        x: 12
        y: parent.height/2
        width: 76 ; height: 96
        color: "lightsteelblue"
    }
    Rectangle{
        id: rect2
        x: 122
        y: parent.height/2
        border.color: "lightsteelblue"
        border.width:4
        width: 76 ; height: 96
        radius: 8
        color: "green"
    }
    Rectangle{
        id: rect3
        x: 240
        y: parent.height/2
        width: 176
        height: 96
        gradient: Gradient{
            GradientStop{ position: 0.0;  color: "lightsteelblue"}
            GradientStop{ position: 1.0; color: "slategray" }
        }
        border.color: "slategray"

    }

}
