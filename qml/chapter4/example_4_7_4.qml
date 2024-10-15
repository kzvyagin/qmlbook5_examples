import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    Rectangle{
        scale: 2
        anchors.centerIn: parent
        width: 200; height: 200

        GreenSquare{
            id: square
            x: 8; y:8
        }
        focus: true
        Keys.onLeftPressed: square.x-=8
        Keys.onRightPressed: square.x+=8
        Keys.onUpPressed: square.y -=8
        Keys.onDownPressed: square.y+=8
        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_Plus:
                square.scale+=0.2
                break;
            case Qt.Key_Minus:
                square.scale-=0.2
                break;
            }

        }
    }
}
