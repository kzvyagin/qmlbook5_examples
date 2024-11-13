import QtQuick 2.0
import Sailfish.Silica 1.0
import QtWebSockets 1.0 // надо много чего подключить

/*
.desktop
Permissions=Internet
.qml
import QtWebSockets 1.0

.spec
Requires:   qt5-qtwebsockets
Requires:   qt5-qtdeclarative-import-websockets

*/

Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All

}
