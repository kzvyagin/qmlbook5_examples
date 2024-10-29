import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_5_1"
    allowedOrientations: Orientation.All
    Rectangle{
        id: rootRect
        scale: 2
        width: 400 ; height: 400
        anchors.centerIn: parent
        PathView{
            id: view
            anchors.fill: parent
            model:100
            delegate: flipCartDelegate
            path: Path{
                  startX: rootRect.width/2
                startY: 0

              PathAttribute{name: "itemZ"; value: 0}
                PathAttribute{name: "itemAngle"; value: -90.0;}
                PathAttribute{name: "itemScale"; value: 0.5;}
                PathLine{ x: view.width/2; y: view.height*0.4}

                PathPercent{value: 0.48}
                PathLine {x: view.width/2; y: view.height*0.5}
                PathAttribute{name: "itemAngle"; value:0.0}
                PathAttribute{name: "itemScale"; value:1.2}
                PathAttribute{name: "itemZ"; value: 100}
                PathLine {x: view.width/2; y: view.height*0.6}

                PathPercent{value: 0.52}
                PathLine {x: view.width/2; y: view.height}
                PathAttribute{name: "itemAngle"; value:90.0}
                PathAttribute{name: "itemScale"; value:0.5}
                PathAttribute{name: "itemZ"; value: 0}

            }
            pathItemCount: 8

            preferredHighlightBegin: 0.5
            preferredHighlightEnd: 0.5
        }

        Component{
            id: flipCartDelegate

            BlueBox{
                id: wrapper
                width: 64 ; height: 64
                antialiasing: true

                visible: PathView.onPath

                scale: PathView.itemScale
                z: PathView.itemZ
                property variant rotX: PathView.itemAngle

                transform: Rotation{
                         axis{ x: 1 ; y:0; z:0}
                         angle: wrapper.rotX;
                         origin {x: 32; y:32}
                }
                text: index

            }
        }

    }
}
