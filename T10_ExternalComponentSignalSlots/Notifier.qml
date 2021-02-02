import QtQuick 2.12

Item {

    property  alias rectColor: rectangle_id.color
    width : rectangle_id.width
    height: rectangle_id.height

    property int count: 0
    property Receiver target: null

    // Connection can be doen here
    onTargetChanged: {
        notify.connect(target.receiverInfo)
    }


    signal notify(string count)



        Rectangle{
            id: rectangle_id
            width: 200
            height: 200
            color: "red"



            Text {
                id: display_text_id
                text: count
                anchors.centerIn:  parent
                font.pointSize: 20

            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    count++;
                    notify(count)

                }
            }

        }

}
