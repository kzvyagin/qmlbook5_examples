import QtQuick 2.0
import Sailfish.Silica 1.0

// THIS IS NOT WIRKING !!! because Models with Actions
// appears onli in QtQuick 2.11 !!!!
Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
  Rectangle{
        id: rootRect
        width: 400; height: 400
        anchors.centerIn: parent
      /*    ListModel{
            id: actionModel

            ListElement {
                name: "Copenhagen"
                hello: function(value) { console.log(value + ": You clicked Copenhagen!"); }
            }

            ListElement {
                name: "Helsinki"
                hello: function(value) { console.log(value + ": Helsinki here!"); }
            }
            ListElement {
                name: "Oslo"
                hello: function(value) { console.log(value + ": Hei Hei fra Oslo!"); }
            }
            ListElement {
                name: "Stockholm"
                hello: function(value) { console.log(value + ": Stockholm calling!"); }
            }

            ListView{
                id: listView
                anchors.fill: parent
                anchors.margins: 20
                clip: true
                model: actionModel
                spacing: 5
                focus: true
            }

            Component{
                id:actionDelegate
                Rectangle{
                    width: listView.width
                    height: 40
                    color: "#157efb"
                    Text {
                        anchors.centerIn: parent
                        font.pixelSize: 10
                        text: name
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: hello(index);
                    }
                }
            }

        }*/
    }

}
