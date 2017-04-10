import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Rectangle
{
    id: tabwidget
    color: "transparent"

    function currentChanged(curIndex)
    {
        content.contentCurrentChanged(curIndex)
        //console.log("111")
    }

//    function pushLeftContent()
//    {
//        for(var i = 0;i<8;i++)
//        {
//            stack.push(page)
//        }
//    }

    ColumnLayout{
        id:columnContent
        anchors.fill: parent
        anchors.left: tabwidget.left

        RowLayout
        {
            id: toolbar
            spacing: 40
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 20
            //Layout.fillWidth: true
            //Layout.fillHeight: true

            property int current: 0
            onCurrentChanged:setCurrentToolBtn()
            Layout.preferredHeight: 80

            function setCurrentToolBtn()
            {
//                for(var i = 0; i < toolbar.children.length; i++)
//                {
//                    toolbar.children[i].state = (toolbar.current == i ? 'checked' : 'leave')
//                }
                tabwidget.currentChanged(toolbar.current)
            }

            ToolBtn
            {
                index:0
                state:"checked"     //第一个是按下状态，默认显示第一个界面
                picSrc: "images/ico_Examine.png"
                btnText:"电脑体检"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:1
                picSrc: "images/ico_dsmain.png"
                btnText:"木马查杀"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:2
                picSrc: "images/ico_SysRepair.png"
                btnText:"系统修复"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:3
                picSrc: "images/ico_TraceCleaner.png"
                btnText:"电脑清理"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:4
                picSrc: "images/ico_SpeedupOpt.png"
                btnText:"优化加速"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:5
                picSrc: "images/ico_expert.png"
                btnText:"电脑专家"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:6
                picSrc: "images/ico_diannaomenzhen.png"
                btnText:"电脑门诊"
                onClicked:toolbar.current=btnIndex
            }
            ToolBtn
            {
                index:7
                picSrc: "images/ico_softmgr.png"
                btnText:"软件管家"
                onClicked:toolbar.current=btnIndex
            }
//            Rectangle {

//            }

            Image
            {
                id: logo
                anchors.right: parent.right
                source: "images/logo.png"
            }
        }

        RowLayout {
            spacing: 0

            Rectangle
            {
                id:content
                //anchors.fill: parent
                //width:tabwidget.width
                //anchors.top: toolbar.bottom
                //anchors.topMargin: 30
                //height: 500
                color:"white"
                Layout.fillWidth: true
                Layout.fillHeight: true

                property int current: 0

                function contentCurrentChanged(curIndex)
                {
                    content.children[curIndex].x=width
                    content.children[curIndex].state='active'
                    content.children[current].state='hide'
                    current = curIndex
                    //console.log("222")
                }

                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0  //控制与父边框的间距
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"你是天上人画中仙遥不可及难以靠近 \n留我在爱情迷局里寸步难行苟且至今"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 100
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"，"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"千里不留行"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"。"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"事了拂衣去"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"，"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"深藏功与名。"
                        }
                    }
                }
                MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 0
                        color:"#FFC0C0C0"
                        Text
                        {
                            font.pointSize: 50
                            font.family: "微软雅黑"
                            color:"#FFFFFF"
                            anchors.centerIn: parent
                            text:"women"
                        }
                    }
                }
            }

            /*StackView {
                id: stack

                //anchors.centerIn: parent

                Layout.fillWidth: true
                Layout.fillHeight: true

                property var home: null
            }

            Component {
                id: page

                Rectangle {

//                    color: Qt.rgba(stack.depth*0.1, stack.depth*0.2, stack.depth*0.3)

//                    Text {
//                        anchors.centerIn: parent
//                        text: "depth - " + stack.depth
//                        font.pointSize: 24
//                        font.bold: true
//                        color: stack.depth <= 4 ? Qt.lighter(parent.color) : Qt.darker(parent.color)
//                    }

                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    color:"white"
                }
            }*/


            Rectangle {
                id:rightRectange
                width:200
                color:"red"
                Layout.fillHeight: true

                ColumnLayout {
                    id:rightColumnLayout
                    //Layout.fillWidth: true
                    //Layout.fillHeight: true
    //                Layout.maximumWidth: 200
    //                Layout.minimumWidth: 200
                    //Layout.preferredWidth: 200

                    anchors.fill: parent
                    spacing: 0

                    Rectangle {
                        id:rightTopContent

                        //Layout.fillWidth: true
                        //Layout.fillHeight: true
                        //Layout.minimumHeight: 100
                        //Layout.maximumHeight: 100
                        Layout.preferredWidth: 200
                        Layout.preferredHeight: 200
                        //Layout.margins: 0

                        color:"green"
                        GridLayout {
                            id:gridLayout
                            rows: 2
                            columns: 3
                            rowSpacing: 5
                            columnSpacing: 2
                            anchors.fill: parent
                            Layout.margins: 0
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            ToolBtn
                            {
                                //index:0
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"木马防火墙"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:1
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"360保镖"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:2
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"网购先赔"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:3
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"木马防火墙"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:4
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"360保镖"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"网购先赔"
                                //onClicked:toolbar.current=btnIndex
                            }
                        }
                    }

                    Rectangle {
                        id:middleRectange
                        color:"blue"
                        //Layout.fillWidth: true
                        Layout.preferredWidth: 200
                        Layout.preferredHeight: 32

                        RowLayout {
                            id: middleLayout
                            anchors.fill: parent

                            Layout.fillWidth: true
                            Layout.maximumWidth: 200
                            Layout.minimumWidth: 200

                            Layout.minimumHeight: 35
                            Layout.maximumHeight: 35
                            Layout.preferredHeight: 35

                            Text {
                                id:middleText
                                text:"功能大全"
                                color: "green"
                                font.pointSize: 9
                                font.family: "微软雅黑"

                                Layout.preferredWidth: 50

                                anchors.left: parent.left
                                anchors.leftMargin: 5
                            }

                            ToolButton {
                                id:middleBtn
                                text:"更多"
//                                width:32
//                                height:32

                                Layout.preferredWidth: 32
                                Layout.preferredHeight: 20

                                anchors.right: parent.right
                                anchors.rightMargin: 5

                                //必须包含  import QtQuick.Controls.Styles 1.4
                                style: ButtonStyle {
                                    background: Rectangle {
                                        implicitWidth: 100
                                        implicitHeight: 25
                                        //border.width: control.activeFocus ? 2 : 1
                                        border.color: "#888"
                                        radius: 4
                                        color: "transparent"
                                        border.width: 0  //用于去除边框
                                        gradient: Gradient {
                                            GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                                            GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Rectangle {
                        id:rightBottomContent
                        color:"#CDB38B"

                        Layout.fillHeight: true
                        Layout.preferredWidth: 200
                        //Layout.preferredHeight: 200
                        //Layout.fillWidth: true
                        Layout.minimumHeight: 200
    //                    Layout.maximumHeight: 32

                        GridLayout {
                            id:gridBottomLayout
                            rows:3
                            columns: 3
                            rowSpacing: 5
                            columnSpacing: 2
                            anchors.fill: parent

                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"健康精灵"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"U盘鉴定器"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"安全桌面"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"游戏盒子"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"手机助手"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"鲁大师"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"360软件小助手"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"一键装机"
                                //onClicked:toolbar.current=btnIndex
                            }
                            ToolBtn
                            {
                                //index:5
                                picSrc: "images/ico_TraceCleaner.png"
                                btnText:"手机卫士"
                                //onClicked:toolbar.current=btnIndex
                            }
                        }
                    }
                }
            }
        }
    }
}

