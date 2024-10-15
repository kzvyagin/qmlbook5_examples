import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_3"
    allowedOrientations: Orientation.All
    Text{
        id: text1
        x: 50
        y: parent.height/2
        text: "The quick fox"
        color:  "#033083"
        font.family: "Ubuntu"
        font.pixelSize: 30
    }

    Text{
        width: 40
        height: 120
        x: 200
        y: parent.height/2
        text: 'A very long text'
        elide: Text.ElideMiddle
        style:  Text.Sunken

        styleColor: "#FF4444"
        verticalAlignment: Text.AlignTop
    }
}
