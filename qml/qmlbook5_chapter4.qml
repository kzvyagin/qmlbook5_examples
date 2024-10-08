import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    //initialPage: Qt.resolvedUrl("pages/example_4_1_1.qml")
    //initialPage: Qt.resolvedUrl("pages/example_4_1_2.qml")
    //initialPage: Qt.resolvedUrl("pages/example_4_2.qml")


    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")

    allowedOrientations: defaultAllowedOrientations
}
