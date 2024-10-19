import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.0

Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Item{
        anchors.fill: parent

        id: root
        property string colorSate1: "red"
        property string colorSate2: "green"
        property string colorDefault: "#2F2F2F"

        state: "stop"
        states: [
            State {
                name: "go"
                PropertyChanges { target: light1; color: root.colorSate1   }
                PropertyChanges { target: light2; color: root.colorDefault }
            },
            State{
                name: "stop"
                PropertyChanges { target: light1; color: root.colorDefault }
                PropertyChanges { target: light2; color: root.colorSate2   }
            }
        ]

        Rectangle{
            id: rootRect
            width: 100
            height: 400
            anchors.centerIn: parent

            ColumnLayout{
                anchors.fill: parent
                anchors.margins: 10
                spacing: 30

                Rectangle{
                    id: light1
                    width: 80; height: 80
                    radius: 40
                    color: "#2F2F2F"
                    border.color: Qt.darker(color,1.1)
                }
                Rectangle{
                    id: light2
                    width: 80; height: 80
                    radius: 40
                    color: "#2F2F2F"
                    border.color: Qt.darker(color,1.1)
                }

            }

        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
                parent.state= ( parent.state == "stop" ? "go": "stop")
            }
        }

        transitions: [
            Transition {
                from: "stop"
                to: "go"

                ColorAnimation {
                    target: light1
                    properties: "color"
                    duration: 2000
                }

                ColorAnimation {
                    target: light2
                    properties: "color"
                    duration: 2000
                }
            },
            Transition {
                from: "go"
                to: "stop"

                ColorAnimation {
                    target: light1
                    properties: "color"
                    duration: 1000
                }

                ColorAnimation {
                    target: light2
                    properties: "color"
                    duration: 1000
                }
            }

        ]

    }
}
