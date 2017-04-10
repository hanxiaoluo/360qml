import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

Rectangle {
    id:root
    //color: "green"
    color: "transparent"
    height: 32

    //设置背景
//    Image
//    {
//        id: background
//        anchors { top: parent.top; bottom: parent.bottom }
//        anchors.fill: parent
//        source: "qrc:/images/head_bg_3.jpg"
//        fillMode: Image.PreserveAspectCrop
//    }

    Image {
        id:yunImage
//        width: 32
//        height: 32
        source: "qrc:/images/cloud.png"

        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id:sucText
        //width: 32
        //height: 32
        text:"成功连接至云安全中心 9.0.2001"
        font.family: "Helvetica"
        font.pointSize: 12
        color: "white"

        anchors.left: yunImage.right
        anchors.leftMargin: 2
        anchors.verticalCenter: parent.verticalCenter
    }

    Image {
        id:upImage
//        width: 32
//        height: 32
        source: "qrc:/images/version.png"

        anchors.left: sucText.right
        anchors.leftMargin: 2
        anchors.verticalCenter: parent.verticalCenter
    }
}

