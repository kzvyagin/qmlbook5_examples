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

https://www.baeldung.com/linux/shell-read-websocket-response

*/

Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All

    Rectangle{
        id: myrect

        width: 400
        height:  400
        anchors.centerIn: parent

        color: "red"
    }

    property string text: ""
    WebSocket{
        id: socket
        url: "wss://ws.ifelse.io"
        active: true
        onTextMessageReceived: {
            text =message
            console.log("get TEXT:", text)
        }
        onStatusChanged: {
            if( socket.status == WebSocket.Error){
                console.log("Error: "+ socket.errorString)
            }else if( socket.status ==WebSocket.Open){
                console.log("Socket open")
                socket.sendTextMessage("ping")
                myrect.color = "green"
            }else if( socket.status ==WebSocket.Closed){
                console.log("\nSocet closed")
            }
        }
    }
}
