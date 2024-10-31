import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All

    Rectangle{
        id: rootRect
        anchors.fill: parent
        color: "black"

        Text{
            id: textId
            text: ""
            anchors.centerIn: parent
            font.pixelSize: 30
        }

        MouseArea{
            anchors.fill: parent
            onClicked:  {
                rootRect.request();
            }
        }

        function request() {
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED) {
                    print('HEADERS_RECEIVED');
                    rootRect.color="yellow"
                } else if(xhr.readyState === XMLHttpRequest.DONE ) {
                    print('DONE');
                    rootRect.color="green"

                    print("////////////////////Full responce text /////////////////////////")
                    print( xhr.responseText )
                    print("////////////////////Searching/////////////////////////")
                    print( xhr.responseText.search("#38488f") )
                    print( xhr.responseText.search("#3848dsssdsd8f") )
                    print("////////////////////Manual parse/////////////////////////")
                    var index       = xhr.responseText.search("<p>This" )
                    var textSubstr  = xhr.responseText.substring(index+3,index+50)
                    print( textSubstr )
                    textId.text = textSubstr;
                    print("///////////////////Json parse//////////////////////////")
                    //var object = JSON.parse(xhr.responseText.toString());
                    //print(JSON.stringify(object, null, 2));
                }
            }
            xhr.open("GET", "http://example.com");
            xhr.send();
        }
    }
}
