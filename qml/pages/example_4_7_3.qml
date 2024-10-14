import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    Rectangle{
        scale: 2
        width: 136
        height: 120
        color: "linen"
        anchors.centerIn: parent
        TTextEdit473{
            id: input
            x:8 ; y:8
            width: 120 ; height: 104
            focus: true
            text: "Text Edit"
        }
    }
}
