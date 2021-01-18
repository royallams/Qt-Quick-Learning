import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    property var fonts: Qt.fontFamilies()
    Rectangle {
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Quitting the App")
                Qt.quit()

                for(var i = 0 ; i<fonts.length ;i++)
                {
                    console.log("["+i+"] :"+fonts[i]);
                }

                // Hash a string
                var mName = "Test Check"
                var hash_name = Qt.md5(mName)
                console.log(" The hash of the name is : "+ hash_name)


                // Open URL Externally
//                Qt.openUrlExternally("https://www.google.com")

//                Open local files with default
//                Qt.openUrlExternally("D:\single_cube_holes_stl.stl")
            }




        }

    }
}
