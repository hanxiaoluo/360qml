#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
//#include <QQmlEngine>
#include <QtQml>
#include "resizeqmlwindow.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    //解决缩放时的窗体闪烁问题,但是开始运行时很慢
    //QCoreApplication::setAttribute(Qt::AA_UseSoftwareOpenGL);

    ResizeQmlWindow resize;
    //QPaintEvent *e;

//    // 首先注册一下类
//    qmlRegisterType<ResizeQmlWindow>(
//                "CPlusPlus.Test",           // 统一资源标识符
//                1,                          // 主版本
//                0,                          // 次版本
//                "ResizeWidget" );          // QML类名称

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.rootContext()->setContextProperty("resize",&resize);

    QObject *rootObject = engine.rootObjects().first();
    //qDebug()<<"111 ="<<rootObject<<rootObject->isWindowType();
    QWindow *w = qobject_cast<QWindow *>(rootObject);
    //qDebug()<<"main w ="<<w;

    if(w)
    {
        //qDebug()<<"w != NULL";
        resize.setWindow(w);
        w->setMinimumSize(QSize(640,480));
        //resize.paintEvent(e);
    }

    return app.exec();
}
