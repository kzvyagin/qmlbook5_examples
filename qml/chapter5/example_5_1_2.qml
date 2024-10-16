import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle
    {
       id: rootRect
       property int mymargin: 10
       width:  parent.width -mymargin; height:  400
       anchors.centerIn: parent

        ClickableImageV2{
            id: greenBox
            x: 40 ; y:  rootRect.height - 10
            source: "qrc:/assets/rectangle_green.png"
            text: "animation on property"


            NumberAnimation on y {
                to: 40
                duration: 4000
            }
        }

        ClickableImageV2{
            id: blueBox
            x: 250 ; y: rootRect.height - blueBox.height
            source: "qrc:/assets/rectangle_blue.png"
            text: "behavior on property"
            Behavior on y{
                NumberAnimation {duration: 4000}
            }
            onClicked:  y=40
        }

        ClickableImageV2{
            id: redBox
            x: 460 ; y: rootRect.height - redBox.height
            source: "qrc:/assets/rectangle_red.png"
            onClicked: anim.start()
            // onClicked:  anim.restart()
            text: "stanalone animation"

            NumberAnimation{
                id: anim
                target: redBox
                property: "y"
                to: 40
                duration: 4000
            }
        }
    }
}
