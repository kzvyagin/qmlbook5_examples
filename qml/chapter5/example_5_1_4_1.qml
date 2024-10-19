import QtQuick 2.0
import Sailfish.Silica 1.0

// Parralel Animation
Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle{
        id: root
        width: 600 ; height:  400
        color: "white"
        property int duration: 3000
        property Item ufo: ufo

        ClickableImageV2{
            id: ufo
            x: 20; y:  200
            text: "ufo"
            source: "qrc:/assets/ufo.png"
            onClicked: animation.restart()
        }

        ParallelAnimation{
            id: animation
            NumberAnimation{
                target: ufo
                properties: "y"
                to: 20
                duration: root.duration*0.6
            }
            NumberAnimation{
                target: ufo
                properties: "x"
                to: 400
                duration: root.duration
            }
        }
    }
}
