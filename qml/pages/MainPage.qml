import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: mainPadeId
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

    property variant fileNames: ["example_4_1_1.qml","example_4_1_2","example_4_2_2",
                                 "example_4_2_3.qml","example_4_2_4","example_4_2_5",
                                 "example_4_3.qml","example_4_4","example_4_5",
                                  "example_4_5_2.qml","example_4_6"]

    Flow{
        id: myFlow
        anchors.top:pageHeader.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 10
        property int index: 0
        spacing: 10
        Repeater{
            model: 12
            Button{
                text:  mainPadeId.fileNames[myFlow.index++]
                color: "black"
                backgroundColor: "lightgray"
                onClicked: {
                    pageStack.push(text)
                }
            }
        }
    }

}
