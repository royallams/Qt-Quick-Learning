import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External Components with Signal ans slots")


    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        target: receiverId
//        Component.onCompleted: {
//            notify.connect(receiverId.receiverInfo)
//        }


    }


    Receiver{
        id: receiverId
        rectColor: "dodgerblue"
        anchors.right: parent.right
    }

//    Component.onCompleted: {
//        notifierId.notify.connect(receiverId.receiverInfo)
//    }
}
