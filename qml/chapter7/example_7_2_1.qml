import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


Page {
    objectName: "example7_2_1"
    allowedOrientations: Orientation.All



    ColumnLayout {
        spacing: 2
        anchors.centerIn: parent

        Repeater{
            id: repeater
            model: 10
            BlueBox{
                width:  200
                height:  64
                text:  index
            }
        }
    }
}
