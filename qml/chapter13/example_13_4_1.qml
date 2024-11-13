import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {

    allowedOrientations: Orientation.All
    Component.onCompleted: {
        print("documents:",StandardPaths.documents)
        print("download:",StandardPaths.download)
        print("home:",StandardPaths.home)
        print("cache:",StandardPaths.cache)
        print("data:",StandardPaths.data)
        print("genericData:",StandardPaths.genericData)
        print("music:",StandardPaths.music)
        print("temporary:",StandardPaths.temporary)
        print("videos:",StandardPaths.videos)
        print("pictures:",StandardPaths.pictures)
    }


  /*  XmlListModel{
        source: "htttp://localhost:8080/colors.xml"
        querry: "/colors"
        XmlRole{ name "color" ;}

    }*/
}

