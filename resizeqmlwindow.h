#ifndef RESIZEQMLWINDOW_H
#define RESIZEQMLWINDOW_H

#include <QObject>
#include <QWindow>
#include <QPaintEvent>
#include <QBitmap>
#include <QPainter>
#include <QWidget>
#include <QDebug>

class ResizeQmlWindow : public QObject
{
    Q_OBJECT
public:
    explicit ResizeQmlWindow(QObject *parent = 0) : QObject(parent) {}

    void setWindow(QWindow *win) {
        m_win = win;
        //m_win->setWindowState(Qt::WindowNoState);
        m_win->setFlags(Qt::FramelessWindowHint | Qt::Window);
        //m_win->setFlags(Qt::FramelessWindowHint);//无边框
        //m_win->setAttribute(Qt::WA_TranslucentBackground);//背景透明
    }

    //direct 九宫格
    Q_INVOKABLE void setMyCursor(int direct){
        switch (direct) {
        case 1:
            m_win->setCursor(QCursor(Qt::SizeFDiagCursor));
            break;
        case 2:
            m_win->setCursor(QCursor(Qt::SizeVerCursor));
            break;
        case 3:
            m_win->setCursor(QCursor(Qt::SizeBDiagCursor));
            break;
        case 4:
            m_win->setCursor(QCursor(Qt::SizeHorCursor));
            break;
        case 5:
            m_win->setCursor(QCursor(Qt::ArrowCursor));
            break;
        case 6:
            m_win->setCursor(QCursor(Qt::SizeHorCursor));
            break;
        case 7:
            m_win->setCursor(QCursor(Qt::SizeBDiagCursor));
            break;
        case 8:
            m_win->setCursor(QCursor(Qt::SizeVerCursor));
            break;
        case 9:
            m_win->setCursor(QCursor(Qt::SizeFDiagCursor));
            break;
        }
    }

//    void paintEvent(QPaintEvent *e)
//    {
//        qDebug()<<"123。。。";
//        //生成一张位图
//        QBitmap objBitmap(m_win->size());
//        //QPainter用于在位图上绘画
//        QPainter painter(&objBitmap);
//        //填充位图矩形框(用白色填充)
//        painter.fillRect(m_win->rect(),Qt::white);
//        painter.setBrush(QColor(0,0,0));
//        //在位图上画圆角矩形(用黑色填充)
//        painter.drawRoundedRect(m_win->rect(),7,7);
//        //使用setmask过滤即可
//        m_win->setMask(objBitmap);
//    }

private:
    QWindow *m_win;

protected:

};

#endif // RESIZEQMLWINDOW_H
