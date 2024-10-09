import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_1"
    allowedOrientations: Orientation.All

    Rectangle {

        id: rootRect
        width: 120
        height: 240
        color:  "lightgreen"

        Image {
            id: triangle
            x: (parent.width-width) /2. ; y:40
            source: 'qrc:/assets/triangle_red.png'
        }

        Text{
            y: triangle.y + triangle.height +20
            width: rootRect.width

            color: 'white'
            horizontalAlignment: Text.AlignHCenter
            text: 'Triangle'
        }
    }
}
