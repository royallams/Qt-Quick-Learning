import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")


    property  int  increment: 0
    Rectangle{
        id: rectangleId
        width :200 +increment
        height :300
        color: "red"

        signal greetFunc(string message)//Declare signal , datatype required


        // Automatic handler is presetn
       onGreetFunc: {
           console.log(" Greet signal is emitted")
       }


        onWidthChanged: {

        }

        function myGreeting(mMessage)
        {
            console.log("My Greeting slot called. The parameter is : "+mMessage)
            increment+=50
        }


        MouseArea{
            anchors.fill: parent
            onClicked: {

                rectangleId.greetFunc("Hi I have triggered a greeting signal")// Fire the signal

            }
        }


        Component.onCompleted: {
            greetFunc.connect(myGreeting)
        }
    }
}
