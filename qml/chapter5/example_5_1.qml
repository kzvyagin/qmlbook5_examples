import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    Rectangle{
        id: root
        anchors.centerIn: parent
        width: 400; height: 400

        property int padding: 40
        property int duration: 4000 //milliseconds
        property bool running: false

        Image{
            id: box
            x: root.padding
            y: (root.height-40)/2
            source: "qrc:/assets/rectangle.png"

            NumberAnimation on x{
                to: root.width - ( root.padding + box.width )
                duration: root.duration
                running: root.running
            }

            RotationAnimation on rotation {
                to: 360
                duration: root.duration
                running: root.running
                onRunningChanged: {
                    if(!running)
                        root.running=false
                }
            }

        }


        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(root.running==false)
                {
                    console.log("running")

                    box.x=root.padding
                    box.y=(root.height-40)/2
                    box.rotation =0
                    root.running = true
                    console.log(root.running)
                }

            }
        }

    }
}
