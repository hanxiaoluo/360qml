import QtQuick 2.0
import QtQuick.Controls 1.3

 Rectangle {
     id: toolbtn
     height: 70
     width: 70
     gradient: on
     property alias picSrc: pic.source
     property alias btnText: label.text
     property int index:0
     signal clicked(int btnIndex)
     property color bkColor: "#00FFFFFF"

     //实现按钮互斥效果
//     property bool checked: false
//     property ExclusiveGroup exclusiveGroup: null
//     onExclusiveGroupChanged: {
//         if (exclusiveGroup)
//             exclusiveGroup.bindCheckable(toolbtn)
//     }

     Gradient
     {
         id:on
         GradientStop { position: 0.0; color: "#00FFFFFF" }
         GradientStop { position: 1.0; color: bkColor }
     }

     Image
     {
         id:pic
         anchors.topMargin: 0
         anchors.horizontalCenter: parent.horizontalCenter
     }

     Text
     {
         id: label
         color: "#ffffff"
         font.pointSize: 9
         font.family: "微软雅黑"
         anchors.horizontalCenter: pic.horizontalCenter
         anchors.top: pic.bottom
         anchors.topMargin: 3
     }

     MouseArea
     {
         hoverEnabled: true
         anchors.fill: parent
         onEntered:toolbtn.state == 'checked' ? toolbtn.state = 'checked' : toolbtn.state = 'hover'
         onExited:toolbtn.state == 'checked' ? toolbtn.state = 'checked' : toolbtn.state = 'leave'
         onPressed:
         {
             toolbtn.state = 'checked'
             toolbtn.clicked(toolbtn.index)
         }
     }

     states:
     [
         State {
             name: "checked"
             PropertyChanges { target: toolbtn; bkColor:"#77FFFFFF" }
         },

         State {
             name: "hover"
             PropertyChanges { target: toolbtn; bkColor:"#77FFFFFF" }
         },

         State {
             name: "leave"
             PropertyChanges { target: toolbtn; bkColor:"#00FFFFFF" }
         }
     ]

     transitions:
     [
         Transition
         {
             PropertyAnimation
             {
                 property:"bkColor"
                 easing.type: Easing.Linear
                 duration: 200
             }
         }
     ]
 }
