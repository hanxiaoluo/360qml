import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0

Rectangle {
    id:root
    //radius: 10
    property bool  isMax: false     //标题栏最大化(还原)
    color: "transparent"

    Text {
        id:titleText
        anchors.left: parent.left
        anchors.leftMargin: 20
        //anchors.centerIn: parent.verticalCenter     //设置居中(水平/垂直)
        anchors.verticalCenter: parent.verticalCenter //设置垂直居中
        text:"360安全卫士9.1"
        font.family: "Helvetica"
        font.pointSize: 12
        color: "white"
    }

    SysBtn {
        id:medal

        anchors.right: skin.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/gray_medal.png"
        picNormal: "qrc:/images/medal.png"
        picPressed: "qrc:/images/gray_medal.png"
        onClicked:
        {
            console.log("skin btn clicked")
            //sysbtngroup.skin()
        }
    }

    SysBtn {
        id:skin

        anchors.right: feedback.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/skin_hover.png"
        picNormal: "qrc:/images/skin_normal.png"
        picPressed: "qrc:/images/skin_pressed.png"
        onClicked:
        {
            console.log("skin btn clicked")
            //sysbtngroup.skin()
        }
    }

    SysBtn {
        id:feedback

        anchors.right: menu.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/feedback_hover.png"
        picNormal: "qrc:/images/feedback_normal.png"
        picPressed: "qrc:/images/feedback_pressed.png"
        onClicked:
        {
            console.log("feedback btn clicked")
            //sysbtngroup.feedback()
        }
    }

    SysBtn
    {
        id:menu

        anchors.right: minBtn.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/menu_hover.png"
        picNormal: "qrc:/images/menu_normal.png"
        picPressed: "qrc:/images/menu_pressed.png"
        onClicked:
        {
            console.log("menu btn clicked")
            //sysbtngroup.menu()
        }
    }

    SysBtn {
        id:minBtn
        anchors.right: maxBtn.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/min_hover.png"
        picNormal: "qrc:/images/min_normal.png"
        picPressed: "qrc:/images/min_pressed.png"

        onClicked: mainWindow.showMinimized()
    }

    SysBtn {
        id:maxBtn
        anchors.right: closeBtn.left
        anchors.rightMargin: 2

        picHover: "qrc:/images/max_normal.ico"
        picNormal: "qrc:/images/max_normal.ico"
        picPressed: "qrc:/images/max_normal.ico"

        onClicked: root.maxUndoFun()
    }

    SysBtn {
        id:closeBtn
        anchors.right: parent.right
        anchors.rightMargin: 2

        picHover: "qrc:/images/close_hover.png"
        picNormal: "qrc:/images/close_normal.png"
        picPressed: "qrc:/images/close_pressed.png"

        onClicked: Qt.quit()
    }



    //最大化(还原)
    function maxUndoFun(){
        if(isMax)
        {
            mainWindow.showNormal()

            maxBtn.picHover = "qrc:/images/max_normal.ico"
            maxBtn.picNormal = "qrc:/images/max_normal.ico"
            maxBtn.picPressed = "qrc:/images/max_normal.ico"
        }
        else
        {
            mainWindow.showMaximized()

            maxBtn.picHover = "qrc:/images/max_max.ico"
            maxBtn.picNormal = "qrc:/images/max_max.ico"
            maxBtn.picPressed = "qrc:/images/max_max.ico"
        }
        isMax = !isMax
    }
}

