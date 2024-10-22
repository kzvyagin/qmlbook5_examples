import QtQuick 2.0
import Sailfish.Silica 1.0

Column {
    property alias model: repeater.model
    property int currentIndex: -1
    property bool allowUncheckAll: false

    Repeater {
        id: repeater

        TextSwitch {
            automaticCheck: false
            checked: currentIndex === index
            text: model.text || modelData
            description: model.description || ""
            onClicked: currentIndex = (allowUncheckAll && currentIndex === index) ? -1 : index
        }
    }
}
