#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "mainclient.h"
#include "board.h"
#include "movefigure.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<MainClient>("mainClient", 1, 0, "MainClient");
    qmlRegisterType<Board>("board", 1, 0, "Board");
    qmlRegisterType<MoveFigure>("move", 1, 0, "MoveFigure");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
