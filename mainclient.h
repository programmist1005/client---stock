#ifndef MAINCLIENT_H
#define MAINCLIENT_H

#include <QObject>
#include <QDebug>

class ISocketAdapter;
class MainClient : public QObject
{
    Q_OBJECT

public:
    explicit MainClient(QObject *parent = nullptr);
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void on_send(QString msg_send);
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE QString getOutCdragNumber();
    Q_INVOKABLE QString getOutCdragSourse();
    Q_INVOKABLE QString getOutCdragI();
    Q_INVOKABLE QString getOutCdragJ();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE QString getOutCtargetNumber();
    Q_INVOKABLE QString getOutCtargetSourse();
    Q_INVOKABLE QString getOutCtargetI();
    Q_INVOKABLE QString getOutCtargetJ();
    //------------------------------------------------------------------------------------------------------------
signals:
    void someMessage();
    //------------------------------------------------------------------------------------------------------------
public slots:
    void on_message(QString text);
    //------------------------------------------------------------------------------------------------------------
protected:
    ISocketAdapter *m_pSock;
};
//------------------------------------------------------------------------------------------------------------
extern QString dragNumberQML;
extern QString dragSourseQML;
extern QString dragIQML;
extern QString dragJQML;
//------------------------------------------------------------------------------------------------------------
extern QString targetNumberQML;
extern QString targetSourseQML;
extern QString targetIQML;
extern QString targetJQML;
//------------------------------------------------------------------------------------------------------------
extern int i;
extern bool wrt;
//------------------------------------------------------------------------------------------------------------

#endif // MAINCLIENT_H
