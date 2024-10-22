import QtQuick 2.0
import QtQuick.Layouts 1.1
import Sailfish.Silica 1.0


Page {
    objectName: "example7_2_3"
    allowedOrientations: Orientation.All


    ColumnLayout{
        anchors.centerIn: parent
        spacing: 2

        Repeater{
            model: ListModel{
                ListElement { name: "Mercury"; surfaceColor: "gray" }
                ListElement { name: "Venus"; surfaceColor: "yellow" }
                ListElement { name: "Earth"; surfaceColor: "blue" }
                ListElement { name: "Mars"; surfaceColor: "orange" }
                ListElement { name: "Jupiter"; surfaceColor: "orange" }
                ListElement { name: "Saturn"; surfaceColor: "yellow" }
                ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
                ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
            }
            delegate: BlueBox{
                width: 200
                height: 64
                radius: 3
                text: name

                Rectangle{
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 4

                    width: 16
                    height:  16
                    radius: 8
                    color: surfaceColor
                }
            }
        }
    }


}
