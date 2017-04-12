import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.1
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

ApplicationWindow {
    id:mainWindow
    objectName: "mainWindow"
    title: qsTr("Hello World")
    width: 900
    height: 640
    visible: true
    flags: Qt.FramelessWindowHint | Qt.Window //注意:不加Qt.Window最小化后任务栏看不到程序
    //color:Qt.rgba(0.5,0.5,0.5,0.9)          //设置透明度
    //modality: Qt.NonModal                   //窗体形式
    color:"transparent"

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/images/head_bg_3.jpg"
        fillMode: Image.PreserveAspectCrop
        visible: false
    }

    Rectangle {
        id: mask
        color: "transparent"
        anchors.fill: parent
        Rectangle {
           anchors.fill: parent
           radius: 10
           color: "black"
        }
        visible: false
    }

    OpacityMask {
        anchors.fill: image
        source: image
        maskSource: mask
    }
    /*Canvas {
        id:backImage
        property int backRadio: 20
        anchors.fill: parent
        contextType: "2d";
        property string menuBak: "qrc:/images/head_bg_3.png";

        onPaint: {
            var context = backImage.getContext('2d')
            context.lineWidth=4;
            context.strokeStyle= "red";//"#494444"; transparent
            context.reset();
            context.beginPath();
            context.moveTo(0,parent.height-backRadio);
            context.lineTo(0,backRadio);
            context.arc(backRadio,backRadio,backRadio,Math.PI,Math.PI*3/2,false);
            context.lineTo(parent.width-backRadio,0);
            context.arc(parent.width-backRadio,backRadio,backRadio,Math.PI*3/2,0,false);
            context.lineTo(parent.width,parent.height-10);

            context.arc(parent.width-backRadio,parent.height-backRadio,backRadio,0,Math.PI/2,false);
            context.lineTo(parent.width-backRadio,parent.height);
            context.arc(backRadio,parent.height-backRadio,backRadio,backRadio,Math.PI/2,Math.PI,false);

            context.clip();
            context.drawImage(menuBak,0,0,parent.width,parent.height);
            context.stroke();
            context.restore();
        }
        Component.onCompleted: loadImage(menuBak);
        onImageLoaded: requestPaint();
    }*/

    ResizeWidget {
        z: 1
        enableSize: 8
        anchors.fill: parent
        //color: "transparent"
        ColumnLayout {
            id:mainLayout
            anchors.fill: parent
            spacing: 0
            //标题栏
            TitleBar {
                id:titleBar
                height: 32
                Layout.fillWidth: true
            }
            //中间内容区域
            ContentWidget{
                id:contentWidget

                Layout.fillWidth: true
                Layout.fillHeight: true
                //color: "red"
            }
            //状态栏
            StateBar {
                id:statusBar
                height: 32
                Layout.fillWidth: true
            }
        }
    }

    //实现窗体拖动
    /*property point startPoint: Qt.point(0, 0)
    property point offsetPoint: Qt.point(0, 0)
    property bool  isMoveWindow: false

    MouseArea {
        id: mouseMoveWindowArea
        anchors.fill: parent
        onPressed: {
            cursorShape = Qt.DragMoveCursor;
            startPoint = Qt.point(mouseX, mouseY);
            isMoveWindow = true;
        }
        onPositionChanged: {
            mainWindow.offsetPoint = Qt.point(mouseX - mainWindow.startPoint.x,
                                             mouseY - mainWindow.startPoint.y);
            if(true == mainWindow.isMoveWindow)
            {
                mainWindow.x = mainWindow.x +mainWindow.offsetPoint.x;
                mainWindow.y = mainWindow.y +mainWindow.offsetPoint.y;
            }
            //缩放
//            mainWindow.setWidth(mainWindow.width-mainWindow.offsetPoint.x);
//            mainWindow.setHeight(mainWindow.height-mainWindow.offsetPoint.y);
        }
        onReleased: {
            cursorShape = Qt.ArrowCursor;
            isMoveWindow = false;
        }
    }*/
}


