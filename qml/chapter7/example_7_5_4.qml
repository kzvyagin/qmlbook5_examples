import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        id: rootRect
        anchors.centerIn: parent
        width: 400;height: 400

        ListView{
            anchors.fill: parent
            anchors.margins: 20
            clip: true

            model: spaceMen

            delegate: spaceManDelegate

            section.property: "nation"
            section.delegate: sectionDelegate
        }

        Component{
            id: spaceManDelegate
            Item{
                width: ListView.view.width
                height: 20
                Text {
                    id: textId
                    anchors{
                        left: parent.left
                        verticalCenter: parent.verticalCenter
                        leftMargin: 8
                    }

                    font.pixelSize: 24
                    text: name
                }
            }
        }

        Component{
            id: sectionDelegate
            BlueBox{
                width: ListView.view.width
                height: 20
                text: section
                fontColor: "#0e0e0e"
            }
        }

        ListModel{
            id: spaceMen
            ListElement { name: "Yuriy Gagarin"; nation: "Russia"; }
            ListElement { name: "Gennadiy Padalko"; nation: "Russia"; }
            ListElement { name: "Valentina Tereshkova"; nation: "Russia"; }
            ListElement { name: "German Titov"; nation: "Russia"; }
            ListElement { name: "Aleksey Leonov"; nation: "Russia"; }
            ListElement { name: "Anatoliy Babkin"; nation: "Russia"; }
            ListElement { name: "Sergey Krikalev"; nation: "Russia"; }
            ListElement { name: "Konstantin Borisov"; nation: "Russia"; }
            ListElement{ name : "Abdul Ahad Mohmand"; nation:"Afganistan" }
            ListElement { name: "Marcos Pontes"; nation: "Brazil"; }
            ListElement { name: "Alexandar Panayotov Alexandrov"; nation: "Bulgaria"; }
            ListElement { name: "Georgi Ivanov"; nation: "Bulgaria"; }
            ListElement { name: "Roberta Bondar"; nation: "Canada"; }
            ListElement { name: "Marc Garneau"; nation: "Canada"; }
            ListElement { name: "Chris Hadfield"; nation: "Canada"; }
            ListElement { name: "Guy Laliberte"; nation: "Canada"; }
            ListElement { name: "Steven MacLean"; nation: "Canada"; }
            ListElement { name: "Julie Payette"; nation: "Canada"; }
            ListElement { name: "Robert Thirsk"; nation: "Canada"; }



        }
    }
}
