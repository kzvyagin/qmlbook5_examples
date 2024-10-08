import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "exmple_4_1_2"
    allowedOrientations: Orientation.All
    Text{
        id: label

        x:24
        y: parent.height/2.
        color: "green"
        font.pixelSize: 40

        property  int spacePresses: 0

        text: "Space pressed: " + spacePresses + " times" //binding is here

        onTextChanged: console.log("text changed to:", text)
        focus:  true
        Keys.onSpacePressed: {
            increment()
        }

        Keys.onEscapePressed: {
            label.text ="" //The lifetime of a binding ends
        }

        function increment(){
            spacePresses+=1
        }
    }

}
