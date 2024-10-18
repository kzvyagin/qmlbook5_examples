import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Rectangle{
        id: root
        scale: 2
        width: 200 ; height: 200
        anchors.centerIn: parent

        color: "#4a4a4a"
        gradient: Gradient{
            GradientStop{ position: 0.0; color:root.color }
            GradientStop{ position: 1.0; color: Qt.lighter(root.color)}
        }

        Grid{
            spacing: 8
            columns: 5
            /*No component EasingType and Box. can't implement example*/
        }
    }
}
