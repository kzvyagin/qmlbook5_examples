import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle{
        width: 200 ; height: 80
        color: "linen"
        //anchors.margins: 40
        anchors.centerIn: parent
        TextInput{
            id: input1
            x:8; y:8
            width: 96; height: 20
            focus: true
            text: "Text input 1"
            font.pixelSize: 15
            clip: true
            KeyNavigation.tab: input2
        }

        TextInput{
            id: input2
            x:8 ; y:36
            width: 98 ; height:  20
            text: "Text input 2"
            font.pixelSize: 15
            clip: true
            KeyNavigation.tab: input1

        }


    }
}
