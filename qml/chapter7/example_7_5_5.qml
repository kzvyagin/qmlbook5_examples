import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQml.Models 2.1 // component for ObjectModel


// TODO examples fom here https://habr.com/ru/articles/195706/

Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Rectangle{
        id: rootRect
        anchors.centerIn: parent
        width: 400; height: 400
        ObjectModel{
            id: objectModel
            Rectangle{ height: 60; width: 80; color: "#157efb"}
            Rectangle{ height: 20; width: 300; color: "#53d769"
                Text{ anchors.centerIn: parent; color: "black"; text: "Hello QML"}
            }
            Rectangle{ height: 40; width: 40; radius: 10; color: "#fc1a1c"}
        }

        ListView{
            anchors.fill: parent
            anchors.margins: 10
            spacing: 5
            model: objectModel
        }
    }
}
