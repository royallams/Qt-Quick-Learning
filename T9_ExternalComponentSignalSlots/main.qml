import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Componenets with signals and slots")

    Notifier{
        rectColor: "Yellowgreen"
        Component.onCompleted: {
            notify.connect(receiverID.receiverInfo)//Connect Signal to Slots
        }
    }


    Receiver{
        id : receiverID
        rectColor: "dodgerblue"
        anchors.right: parent.right

    }
}
