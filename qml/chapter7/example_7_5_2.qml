import QtQuick 2.6
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_5_2"
    allowedOrientations: Orientation.All

    Rectangle{
        id: rootRect
        width: 400 ; height: 400;
        anchors.centerIn: parent

        // NO TABLE MODEL IN QtQuick 2.6, it starts from  QtQuick 2.12
    }
}
