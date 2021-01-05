import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")



    property string textToDisplay: "Royal"

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })



    Rectangle{
        width: 200
        height: 100
        anchors.centerIn: parent
        color: aColor

        Text{
            id:mTextId
            anchors.centerIn : parent
            text: textToDisplay
        }

    }

            Component.onCompleted: {
                anArray.forEach(function(value, index)
                {
                    if(index === 5)
                    {
                        console.log("Value :"+value())

                    }
                    else
                    {
                        console.log("Value :"+value)

                    }

                })

            }






}
