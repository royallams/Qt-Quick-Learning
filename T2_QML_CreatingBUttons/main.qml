import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id : rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property  string textToShow: "Royal"

    Row{
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id : redRectId
            width: 150; height: 150
            color: "red"
            radius:20
            MouseArea{
             anchors.fill:parent
             onClicked: {
                 console.log("Clicked on the Red Rectangle")
                 textToShow = "RED CLICKED"

             }
            }
        }

        Rectangle{
            id : greenRectId
            width: 150; height: 150
            color: "green"
            radius:20
            MouseArea{
             anchors.fill:parent
             onClicked: {
                 console.log("Clicked on the Green Rectangle")
                 textToShow = "GREEN CLICKED"

             }
            }
        }

        Rectangle{
            id : blueRectId
            width: 150; height: 150
            color: "blue"
            radius:20
            MouseArea{
             anchors.fill:parent
             onClicked: {
                 console.log("Clicked on the Blue Rectangle")
                 textToShow = "BLUE CLICKED"
             }
            }
        }
        Rectangle{
            id : textRectId
            width: 150; height: 150
            color: "dodgerblue"
            radius:100

            Text {
                id: textBox
                anchors.centerIn: parent
                text: qsTr(textToShow)
            }
            MouseArea{
             anchors.fill:parent
             onClicked: {
                 console.log("Clicked on the Blue Rectangle")
                 textBox.text = "LOOP"
             }
            }
        }
    }
}
