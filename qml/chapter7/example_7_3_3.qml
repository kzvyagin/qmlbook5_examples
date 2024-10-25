import QtQuick 2.0
import Sailfish.Silica 1.0


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

            model: 10
            delegate: numberDelegate

            header: headerComponent
            footer: footerComponent

        }

        Component{
            id: headerComponent

            YellowBox{
                width: ListView.view.width
                height: 20
                text: "Header"
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
