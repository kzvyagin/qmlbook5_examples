import QtQuick 2.0
import Sailfish.Silica 1.0
import QtWebSockets 1.0
/*
to connect to VBox emulator activate third network adapter in VM settings and setup it like a brige to you PC interface
then gwt IP addres of you PC on the used interface and us IP in connections to nodejs server instead loaclhost
*/
Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All
    Text{
        id: lable1
        color: "#FFF"
        horizontalAlignment:Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
    }
    WebSocket{
        id: socket
        url: "ws://192.168.0.167:3000"
        active: true
        onTextMessageReceived: {
            console.log('<', message)
        }
        onStatusChanged: {
            if(socket.status ==WebSocket.Error){
                console.log("Error:", socket.errorString)
            }else if( socket.status ==WebSocket.Open){
                console.log("Socket open")
            }else if( socket.status==WebSocket.Closed){
                console.log("Socket closed")
            }
        }
    }
}
