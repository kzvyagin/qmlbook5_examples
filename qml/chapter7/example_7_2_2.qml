import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


Page {
    objectName: "example7_2_2"
    allowedOrientations: Orientation.All


    ColumnLayout {
        spacing: 2
        anchors.centerIn: parent

        Repeater{
            id: repeater
            model: ["Enterprise", "Columbia", "Challenger", "Discovery", "Endeavour", "Atlantis"]
            delegate: BlueBox{
                width:  200
                height:  64
                text:  modelData + "("+index+")"
            }
        }
    }


}
