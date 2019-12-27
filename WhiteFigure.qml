import QtQml.Models 2.3
import QtQuick 2.6
import QtQuick.Controls 2.4
import board 1.0
import move 1.0

ApplicationWindow {
    id: whiteFigure
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
        width: whiteFigure.width
        height: whiteFigure.height

        Grid {
            rows: 2
            columns: 2

            Rectangle { color: "white"; width: whiteFigure.width/2; height: whiteFigure.height/2 }
            Rectangle { color: "gray"; width: whiteFigure.width/2; height: whiteFigure.height/2 }
            Rectangle { color: "gray"; width: whiteFigure.width/2; height: whiteFigure.height/2 }
            Rectangle { color: "white"; width: whiteFigure.width/2; height: whiteFigure.height/2 }
        }

        Grid {
            rows: 2
            columns: 2

            Image {
                width: whiteFigure.width/2
                height: whiteFigure.height/2
                source: "qrc:/res/img/white_queen.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/white_queen.png");
                        whiteFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: whiteFigure.width/2
                height: whiteFigure.height/2
                source: "qrc:/res/img/white_rook.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/white_rook.png");
                        whiteFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: whiteFigure.width/2
                height: whiteFigure.height/2
                source: "qrc:/res/img/white_knight.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/white_knight.png");
                        whiteFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
            Image {
                width: whiteFigure.width/2
                height: whiteFigure.height/2
                source: "qrc:/res/img/white_bishop.png"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        moveFigure.selectFigure("qrc:/res/img/white_bishop.png");
                        whiteFigure.signalExit() // Вызываем сигнал
                    }
                }
            }
        }
    }
}
