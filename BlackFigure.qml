import QtQml.Models 2.3
import QtQuick 2.6
import QtQuick.Controls 2.4
import board 1.0
import move 1.0

ApplicationWindow {
    id: blackFigure
    signal signalExit   // Задаём сигнал
    width:300
    height:300
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

    MoveFigure {
        id:moveFigure
    }

    Rectangle{
        width: blackFigure.width
        height: blackFigure.height

        Grid {
            rows: 2
            columns: 2

            Rectangle { color: "white"; width: blackFigure.width/2; height: blackFigure.height/2 }
            Rectangle { color: "gray"; width: blackFigure.width/2; height: blackFigure.height/2 }
            Rectangle { color: "gray"; width: blackFigure.width/2; height: blackFigure.height/2 }
            Rectangle { color: "white"; width: blackFigure.width/2; height: blackFigure.height/2 }
        }

        Grid {
            rows: 2
            columns: 2

            Image {
                width: blackFigure.width/2
                height: blackFigure.height/2
                source: "qrc:/res/img/black_queen.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/black_queen.png");
                        blackFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: blackFigure.width/2
                height: blackFigure.height/2
                source: "qrc:/res/img/black_rook.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/black_rook.png");
                        blackFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: blackFigure.width/2
                height: blackFigure.height/2
                source: "qrc:/res/img/black_knight.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/black_knight.png");
                        blackFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: blackFigure.width/2
                height: blackFigure.height/2
                source: "qrc:/res/img/black_bishop.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/black_bishop.png");
                        blackFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
        }
    }
}
