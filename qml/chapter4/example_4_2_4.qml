import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_4_2_4"
    allowedOrientations: Orientation.All
    Image {
        id: imge1
        source: "qrc:/assets/triangle_red.png"
    }
    Image {
        id: imge2
        x: parent.width/2
        source: "qrc:/assets/triangle_red.png"// This is available in all editors.
        height: 72/2
        fillMode: Image.PreserveAspectCrop
        clip: true
    }
}
