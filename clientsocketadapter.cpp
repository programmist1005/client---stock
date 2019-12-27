#include "clientsocketadapter.h"
#include <QVector>
#include <QTcpSocket>
#include <QDataStream>

ClientSocketAdapter::ClientSocketAdapter(QObject *parent)
    : SocketAdapter(parent)
{
    m_ptcpSocket->connectToHost("localhost", 1024);
    //qDebug()<<"m_Figure->portNumber()="<<m_Figure->portNumber();
}
