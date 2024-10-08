import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        id: pageHeader
        objectName: "pageHeader"
        title: qsTr("QmlBookExample")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    Flow{
        id: myFlow
        anchors.top:pageHeader.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 10

        spacing: 10

        Button{
            text:  "example_4_1"
            color: "black"
            backgroundColor: "lightgray"
            onClicked: {
                pageStack.push("example_4_1_1.qml")
            }
        }

        Button{
            text:  "example_4_1_2"
            color: "black"
            backgroundColor: "lightgray"
            onClicked: {
                pageStack.push("example_4_1_2.qml")
            }
        }

        Button{
            text:  "example_4_2_2"
            color: "black"
            backgroundColor: "lightgray"
            onClicked: {
                pageStack.push("example_4_2_2.qml")
            }
        }
    }

}
