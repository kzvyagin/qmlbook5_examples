import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    //initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    initialPage: Qt.resolvedUrl("chapter4/example_4_7_4.qml")
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")

    allowedOrientations: defaultAllowedOrientations
}
