import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_1_1"
    allowedOrientations: Orientation.All

    Text{
        id: thisLabel
        x:24
        y:500
        height: 2*width

        property  int  times: 24
        property alias anotherTime: thisLabel.times

        text: "Greetings" + times

        font.family: "Ubuntu"
        font.pixelSize: 50

        //KeyNavigation.tab: otherLabel

        onHeightChanged: console.log('height:' , height)

        focus:  true

        color: "red"
        MouseArea{
            anchors.fill: thisLabel
            onClicked: {
                console.log("click")
                 if(parent.color=="#ff0000")
                    parent.color= "green"
                 else
                     parent.color= "red"
            }
        }
    }
}
