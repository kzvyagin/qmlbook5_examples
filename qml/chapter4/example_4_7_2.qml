import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle{
        scale: 2
        width: 200 ; height: 80
        color: "linen"
        //anchors.margins: 40
        anchors.centerIn: parent
        TLineEditV1{
            id: input1
            x:8; y:8
            width: 96; height: 20
            text: "Text input 1"
            KeyNavigation.tab: input2.input
        }

        TLineEditV1{
            id: input2
            x:8 ; y:36
            width: 98 ; height:  20
            text: "Text input 2"
            KeyNavigation.tab: input1.input
        }


    }
}
