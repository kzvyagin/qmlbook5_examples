import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        width: 120
        height: 300
        anchors.centerIn: parent
        gradient: Gradient{
            GradientStop{ position: 0.0 ; color: "#f6f6f6"}
            GradientStop{ position: 0.0 ; color: "#d7d7d7"}
        }

        ListView{
            id: myView
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 1000
            delegate: numberDelegate
            //delegate: externDelegate// uncomment this and lines 28-30 to use externDelegate, and dont forget to comment line 22
            spacing: 5
            focus: true
        }

        /*NumberDelegate74{
            id: externDelegate
        }*/

        Component {
            id: numberDelegate
            Rectangle{
                width: ListView.view.width
                height: 40
                color: ListView.isCurrentItem ? "#157efb":"#53d769"
                border.color: Qt.lighter(color,1.1)
                Text {
                     anchors.centerIn: parent
                     font.pixelSize: 30
                     text: index
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        myView.currentIndex = index // this state changhes current item by mouse clicked
                    }
                }
            }
        }

    }
}
