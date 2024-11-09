import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    //initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    initialPage: Qt.resolvedUrl("chapter13/example_13_4.qml" )
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")

    allowedOrientations: defaultAllowedOrientations
}
