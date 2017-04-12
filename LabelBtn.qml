import QtQuick 2.4

Rectangle {
    id:labelbtn
    property string picSrc: ""
    property string text:""

    width:50
    height:50
    Image
    {
        id: image
        source:labelbtn.picSrc
    }
    Text
    {
        id: label
        color: "#000000"
        font.pointSize: 9
        font.family: "微软雅黑"
        anchors.horizontalCenter: image.horizontalCenter
        anchors.top: image.bottom
        anchors.topMargin: 3
        text:labelbtn.text
    }
}
