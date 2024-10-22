import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    ListModel {
           id: options

           ListElement {
               text: "Option 1"
               description: "This is option 1"
           }

           ListElement {
               text: "Option 2"
               description: "This is option 2"
           }

           ListElement {
               text: "Option 3"
               description: "This is option 3"
           }
       }

       RadioButtons {
           width: parent.width
           model: options
       }
}
