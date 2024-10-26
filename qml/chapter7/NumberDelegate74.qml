import QtQuick 2.0

Component {
    id: myStandAloneDelegate
    Rectangle{
        width: ListView.view.width
        height: 40
        color: ListView.isCurrentItem ? "#157efb":"#53d769"
        border.color: Qt.lighter(color,1.1)
        Text {
             anchors.centerIn: parent
             font.pixelSize: 30
             text: index
        }
    }
}
