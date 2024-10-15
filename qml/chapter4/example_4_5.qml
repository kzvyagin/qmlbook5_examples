import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    /*Column{
        id: column
        anchors.centerIn: parent
        spacing: 8
        BlueSquare{}
        GreenSquare{ radius: 20}
        RedSquare{}
    }*/

    /*Row{
        id: row
        anchors.centerIn: parent
        spacing: 8
        BlueSquare{}
        GreenSquare{ radius: 20}
        RedSquare{}
    }*/

    /*Grid{
        id: grid
        rows: 4
        columns: 2
        anchors.centerIn: parent
        spacing: 8
        RedSquare {}
        RedSquare {}
        RedSquare {}
        RedSquare {}
        RedSquare {}
        RedSquare {}
        RedSquare {}
    }*/

    Flow{
        width: 120
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin:  20
        spacing: 8
        RedSquare{}
        BlueSquare{}
        GreenSquare{}
    }
}
