#ifndef CLIENTSOCKETADAPTER_H
# define CLIENTSOCKETADAPTER_H

# include "../common/socketadapter.h"

#include "movefigure.h"

class MoveFigure;

class ClientSocketAdapter : public SocketAdapter
{
    Q_OBJECT
public:
    explicit ClientSocketAdapter(QObject *parent);

    MoveFigure *m_Figure;
};

#endif // CLIENTSOCKETADAPTER_H
