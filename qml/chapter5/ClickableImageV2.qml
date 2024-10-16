import QtQuick 2.0


Item{
    id: root
    property alias text: label.text
    property alias source: image.source
    signal clicked

    Item{
        id: container
        Image{
            id: image
            anchors.top: container.top
            MouseArea{
                anchors.fill: parent
                onClicked: root.clicked();
            }
        }

        Text {
            id: label
            anchors.top: image.bottom
            anchors.margins: 10
            width: image.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            color: "#ecccce"
            text: qsTr("text")
        }


    }
}
