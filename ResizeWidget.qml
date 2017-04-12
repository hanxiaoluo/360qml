import QtQuick 2.4
import QtQuick.Window 2.2

Item {
    property int  enableSize: 4
    property bool isPressed: false
    property point customPoint
    //color:"#00000000"
    //opacity: 1
    //radius: 20

    //左上角
    Item {
        id: leftTop
        width: enableSize
        height: enableSize
        anchors.left: parent.left
        anchors.top: parent.top
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(1)
            onReleased: release()
            onPositionChanged: positionChange(mouse, -1, -1)
        }
    }

    //Top
    Item {
        id: top
        height: enableSize
        anchors.left: leftTop.right
        anchors.right: rightTop.left
        anchors.top: parent.top
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(2)
            onReleased: release()

            onMouseYChanged: positionChange(Qt.point(customPoint.x, mouseY), 1, -1)
        }
    }

    //右上角
    Item {
        id: rightTop
        width: enableSize
        height: enableSize
        anchors.right: parent.right
        anchors.top: parent.top
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(3)
            onReleased: release()
            onPositionChanged: positionChange(mouse, 1, -1)
        }
    }

    //Left
    Item {
        id: left
        width: enableSize
        anchors.left: parent.left
        anchors.top: leftTop.bottom
        anchors.bottom: leftBottom.top
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(4)
            onReleased: release()

            onMouseXChanged: positionChange(Qt.point(mouseX, customPoint.y), -1, 1)
        }
    }

    //Center - 5
    Item {
        id: center
        anchors.left: left.right
        anchors.right: right.left
        anchors.top: top.bottom
        anchors.bottom: bottom.top

        MouseArea {
            anchors.fill: parent

            property point clickPos
            onPressed: clickPos = Qt.point(mouse.x,mouse.y)
            onPositionChanged: {
                if(pressed && mainWindow.visibility !== Window.Maximized && mainWindow.visibility !== Window.FullScreen) {
                    var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                    mainWindow.x += delta.x
                    mainWindow.y += delta.y
                }
            }
        }
    }

    //Right
    Item {
        id: right
        width: enableSize
        anchors.right: parent.right
        anchors.top: rightTop.bottom
        anchors.bottom: rightBottom.top
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(6)
            onReleased: release()

            onMouseXChanged: positionChange(Qt.point(mouseX, customPoint.y), 1, 1)
        }
    }

    //左下角
    Item {
        id: leftBottom
        width: enableSize
        height: enableSize
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(7)
            onReleased: release()

            onPositionChanged: positionChange(mouse, -1, 1)
        }
    }

    //bottom
    Item {
        id: bottom
        height: enableSize
        anchors.left: leftBottom.right
        anchors.right: rightBottom.left
        anchors.bottom: parent.bottom
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(8)
            onReleased: release()

            onMouseYChanged: positionChange(Qt.point(customPoint.x, mouseY), 1, 1)
        }
    }

    //右下角
    Item {
        id:rightBottom
        width: enableSize
        height: enableSize
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onPressed: press(mouse)
            onEntered: enter(9)
            onReleased: release()

            onPositionChanged: positionChange(mouse,1,1)
        }
    }

    function enter(direct) {
        resize.setMyCursor(direct)
    }

    function press(mouse) {
        isPressed = true
        customPoint = Qt.point(mouse.x, mouse.y)
    }

    function release() {
        isPressed = false
        //customPoint = undefined
    }

    function positionChange(newPosition, directX, directY) { /*x轴方向*/ /*y轴方向*/
        if(!isPressed) return

        var delta = Qt.point(newPosition.x-customPoint.x, newPosition.y-customPoint.y)
        var tmpW,tmpH

        if(directX >= 0)
            tmpW = mainWindow.width + delta.x
        else
            tmpW = mainWindow.width - delta.x

        if(directY >= 0)
            tmpH = mainWindow.height + delta.y
        else
            tmpH = mainWindow.height - delta.y

        if(tmpW < mainWindow.minimumWidth) {
            if(directX < 0)
                mainWindow.x += (mainWindow.width - mainWindow.minimumWidth)
            mainWindow.width = mainWindow.minimumWidth
        }
        else {
            mainWindow.width = tmpW
            if(directX < 0)
                mainWindow.x += delta.x
        }

        if(tmpH < mainWindow.minimumHeight) {
            if(directY < 0)
                mainWindow.y += (mainWindow.height - mainWindow.minimumHeight)
            mainWindow.height = mainWindow.minimumHeight
        }
        else {
            mainWindow.height = tmpH
            if(directY < 0)
                mainWindow.y += delta.y
        }
    }
}
