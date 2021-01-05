import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")



    Rectangle{
        id :  redRectId
        width : 50
        height : width * 1.5
        color : "red"
    }


    Rectangle{
        id :  blueRectId
        width : 100
        height : 100
        color : "blue"
        anchors.bottom: parent.bottom

        MouseArea{
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width +10

            }
        }
    }


    Rectangle{
        id :  greenRectId
        width : 100
        height : 100
        color : "green"
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right

        MouseArea{
            anchors.fill: parent
            onClicked: {
//                redRectId.height = redRectId.width *1.5// Doesnot work .. since binding doesnt  happen
                  redRectId.height = Qt.binding(function(){
                    return redRectId.width *2 //It tells Qt to bind again with this code..
                  })

            }
        }
    }


}
