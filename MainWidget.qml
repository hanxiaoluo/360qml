import QtQuick 2.0

Rectangle {
    id:widget
    width:parent.width
    height:parent.height
    color:"white"
    state:"hide"

    property int index: 0

    states:
    [
        State
        {
            name:"active"
            PropertyChanges
            {
                target: widget
                x:parent.x
            }

        },
        State
        {
            name:"hide"
            PropertyChanges
            {
                target: widget
                x:parent.x - width
            }
        }

    ]

    //1）Transition元素用于为状态之间的切换提供动画支持（A. 过渡只能被状态切换激活；B. 过渡中的动画可以以串行或并行的方式执行）
    //2）通过设置to和from属性，我们可以指定与特定状态绑定的动画
    //3）过渡可以被设置为reversible（默认为false）。当满足条件时，自动切换到以前的状态
    /*transitions:
    [
        Transition
        {
            PropertyAnimation
            {
                property:"x"
                duration: 500
                easing.type: Easing.OutBounce
                easing.amplitude: 0.1
            }
        }
    ]*/
}
