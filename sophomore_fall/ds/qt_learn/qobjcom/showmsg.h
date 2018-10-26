#ifndef SHOWMSG_H
#define SHOWMSG_H

#include <QObject>

class ShowMsg : public QObject
{
    Q_OBJECT
public:
    //parent pointer as null to use os as parent
    explicit ShowMsg(QObject *parent = 0);
    ~ShowMsg();

signals:

public slots:
    void RecvMsg(QString str);
};

#endif // SHOWMSG_H
