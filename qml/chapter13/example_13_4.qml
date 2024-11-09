import QtQuick 2.5
import Sailfish.Silica 1.0


Page {
    objectName: "example_7_3"
    allowedOrientations: Orientation.All

    Rectangle{
        width: 400; height: 400
        anchors.centerIn: parent
        color: "#000000"


    GridView{
        id: view
        anchors.fill: parent
        anchors.margins: 5
        cellWidth: width/4
        cellHeight: cellWidth
        delegate: Rectangle{
            width: view.cellWidth
            height: view.cellHeight
            color: modelData.value
        }
        }
     }
    function request(){
        var xhr= new XMLHttpRequest()
        xhr.onreadystatechange = function(){
            if( xhr.readyState === XMLHttpRequest.HEADERS_RECIVED ){
                print("HEADERS RECIVED")
            }
            else if( xhr.readyState === XMLHttpRequest.DONE ){
                print('DONE')
                print(xhr.responseText.toString())
                var obj= JSON.parse(xhr.responseText.toString())
                print(obj.colors)
                print(obj.value)

                view.model=obj.colors
            }
        }

        xhr.open("GET","qrc:/assets/colors.json");
        xhr.send();
    }
    Component.onCompleted: {
        request()
    }
}
