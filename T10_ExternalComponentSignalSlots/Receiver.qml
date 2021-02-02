import QtQuick 2.12

Item {

    property  alias rectColor: receiver_rect_id.color
    width : receiver_rect_id.width
    height: receiver_rect_id.height


    function receiverInfo(count){
        receiver_text_id.text = count
        console.log("Receiver received count : "+ count)
    }

    property int count: 0
        Rectangle{
            id: receiver_rect_id
            width: 200
            height: 200
            color: "blue"



            Text {
                id: receiver_text_id
                text: "0"
                anchors.centerIn:  parent
                font.pointSize: 20

            }


        }

}
