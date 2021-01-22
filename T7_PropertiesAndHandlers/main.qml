import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property and Handler Demo")

    property  string  mFirstName: "Royal"

     Rectangle{
        width : 300
        height: 100
        color: "forestgreen"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill : parent
            onClicked: {
                mFirstName : "Aquilla"
                console.log("Mouse Clicked. This changes my name..")
            }

        }

    }
     onMFirstNameChanged:   {
         console.log("My Name is changed to : "+mFirstName)
     }

    Component.onCompleted: {
        console.log("The firstname is :"+mFirstName)
    }
}
