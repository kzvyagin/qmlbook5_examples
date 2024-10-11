import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All

    Item{
        anchors.fill: parent

       /* Image{
            id: bg
            source: "qrc:/assets/circle_pink.png"
        }*/

       MouseArea{
           id: backgroundClicker
           anchors.fill: parent
           onClicked: {
               circle.x=84
               box.rotation=0
               triangle.rotation =0
               triangle.scale =1.0
               //parent._test_overlap()
               //parent._test_transfors()
           }
       }

       ClickableImage44{
           id: circle
           x: 84; y:68
           source: "qrc:/assets/circle_pink.png"
           antialiasing: true
           onClicked: {
               x+=20
           }
       }

       ClickableImage44{
           id: box
           x: 464 ; y: 68
           source: "qrc:/assets/rectangle.png"
           antialiasing: true
           onClicked: {
               rotation +=15
           }
       }

       ClickableImage44{
           id: triangle
           x: 248; y:68
           source: "qrc:/assets/triangle_red.png"
           antialiasing: true
           onClicked: {
               rotation+=15
               scale+=0.05
           }
       }

       function _test_transfors(){
           circle.x+=20
           box.rotation =15
           triangle.scale =1.2
           triangle.rotation =-15
       }

       function _test_overlap(){
           circle.x += 40
           box.rotation =15
           triangle.scale = 2.0
           triangle.rotation =45
       }

    }
}
