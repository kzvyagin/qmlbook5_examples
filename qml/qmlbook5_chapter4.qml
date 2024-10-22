import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    //initialPage: Qt.resolvedUrl("pages/MainPage.qml")
    initialPage: Qt.resolvedUrl("chapter7/example_7_2_3.qml" )
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")

    allowedOrientations: defaultAllowedOrientations
}
