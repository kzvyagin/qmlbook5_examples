import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        id: rootRect
        width: 600 ; height: 1200;
        anchors.centerIn: parent
        Component{
            id: xmlDelegate
            Rectangle{
                width: listView.width
                height: 220
                color:"#333"
                Column{
                    Text {
                        id: myText
                        text: title
                        color: "#e0e0e0"
                    }
                    Image{
                        width: listView.width
                        height: 200
                        fillMode: Image.PreserveAspectCrop
                        source: imageSource
                    }
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log(description)
                    }
                }
            }
        }

        XmlListModel{
            id: xmlModel
            source: "https://www.nasa.gov/rss/dyn/image_of_the_day.rss"
            query: "/rss/channel/item"
            XmlRole {name: "title" ; query: "title/string()"}
            XmlRole {name: "imageSource" ; query:"enclosure/string(@url)" }
            XmlRole {name: "description" ; query: "description/string()"}
        }

        ListView{
            id: listView
            spacing: 10
            clip: true
            anchors.fill: parent
            model: xmlModel
            delegate: xmlDelegate
        }

    }
}
