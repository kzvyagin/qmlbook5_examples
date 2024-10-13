import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    property int baseWidth: 80
    property int baseHeight: 80
    property int childWidth: 40
    property int childHeight: 40

    Grid{
        rows: 3
        columns:  3
        spacing: 10
        anchors.centerIn: parent
        scale: 2
    GreenSquare{
        id: gs1
        x: 10
        y: 10
        BlueSquare{
            width: 12
            anchors.fill: parent
            anchors.margins: 8
            text:  "(1)"
        }
    }

    GreenSquare{
        BlueSquare{
            width: 20
            height: 20
            y: 8 // form parent!
            anchors.left: parent.left
            anchors.leftMargin: 8
            text: "(2)"
        }
    }

    GreenSquare{
        BlueSquare{
            width: 20
            height: 20
            anchors.left: parent.right
            text: "(3)"
        }
    }

    GreenSquare{
        BlueSquare{
            id: blue1
            width: 20
            height: 20
            y:8
            anchors.horizontalCenter: parent.horizontalCenter
            text: "(4)"
        }

        BlueSquare
        {
            id:blue2
            width:  10
            height: 10
            anchors.top: blue1.bottom
            anchors.topMargin: 4
            anchors.horizontalCenter: blue1.horizontalCenter
            text: ""
        }
    }

    GreenSquare{
        BlueSquare{
            width: 20
            height:  20
            anchors.centerIn: parent
            text: "(5)"

        }
    }

    GreenSquare{
        BlueSquare{
            width: 20
            height: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -12
            anchors.verticalCenter: parent.verticalCenter
            text: "(6)"
        }
    }

    }
}
