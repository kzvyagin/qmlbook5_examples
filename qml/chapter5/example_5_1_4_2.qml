import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    Rectangle{
        id: rootField
        width: 680
        height: 300
        anchors.centerIn: parent
        property int duration: 3000
        Rectangle{
            id: sky
            width: parent.width
            height: 200
            gradient: Gradient{
                GradientStop{ position: 0.0; color:"#0080FF"}
                GradientStop{ position: 1.0; color: "#66CCFF"}
            }
        }
        Rectangle{
            id: ground
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom
            width: parent.width
            gradient: Gradient{
                GradientStop{ position: 0.0; color: "#00FF00" }
                GradientStop{ position: 1.0; color: "#00803F"}
            }
        }

        Image{
            id: ball
            scale: 0.5
            x: 0; y: rootField.height -ball.height
            source: "qrc:/assets/ball.png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ball.x = 0
                    ball.y = rootField.height -ball.height
                    ball.rotation = 0
                    //anim1.restart()
                    //anim2.restart()
                    anim3.restart()
                }
            }
        }
    }

    SequentialAnimation{
        id: anim1
        NumberAnimation{
            target: ball
            properties: "y"
            to: 20
            duration: rootField.duration *0.4
        }
        NumberAnimation{
            target: ball
            properties: "y"
            to: rootField.height -ball.height
            duration: rootField.duration *0.6
        }
    }

    ParallelAnimation{
        id: anim2
        SequentialAnimation{
            id: anim2_1
            NumberAnimation{
                target: ball
                properties: "y"
                to: 20
                duration: rootField.duration *0.4
            }
            NumberAnimation{
                target: ball
                properties: "y"
                to: rootField.height -ball.height
                duration: rootField.duration *0.6
            }
        }

        NumberAnimation{
            target: ball
            properties: "x"
            to: rootField.width -ball.width
            duration: rootField.duration
        }
    }

    ParallelAnimation{
        id: anim3
        SequentialAnimation{

            NumberAnimation{
                target: ball
                properties: "y"
                to: 20
                duration: rootField.duration *0.4
            }
            NumberAnimation{
                target: ball
                properties: "y"
                to: rootField.height -ball.height
                duration: rootField.duration *0.6
            }
        }
        NumberAnimation{
            target: ball
            properties: "x"
            to: rootField.width -ball.width
            duration: rootField.duration
            easing.type: Easing.OutCubic;
        }
        RotationAnimation{
            target: ball
            properties: "rotation"
            to: 720
            duration: rootField.duration
        }
    }

}
