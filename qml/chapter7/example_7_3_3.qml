import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All

    Rectangle{
        id: rootRect
        width: 400
        height:  400
        anchors.centerIn: parent

        ListView{
            id: listView

            anchors.fill: parent
            anchors.margins: 20
            clip:  true
            spacing: 10

            model: 5
            delegate: numberDelegate

            header: headerComponent
            footer: footerComponent

        }

        Component{// This header component implements header with spacing by spanRect
            id: headerComponent

            ColumnLayout{
                id: colLayout
                width: ListView.view.width
                height: 40
                YellowBox{

                    anchors.left:  parent.left
                    anchors.right: parent.right
                    anchors.top:   parent.top
                    height: 30
                    text: "Header"
                }
                Rectangle { // this Rect here only for making spacing beetween header and list items
                    id: spanRect
                    width: 10
                    border.color: "red"
                    color: "red"
                }
            }

        }

        Component{
            id: footerComponent
            YellowBox{ width: ListView.view.width ;  height: 20; text: "Footer" }
        }

        Component{
            id: numberDelegate
            GreenBox{ width: ListView.view.width ;  height: 40; text: "item #"+ index  }
        }
    }
}
