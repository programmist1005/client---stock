import QtQml.Models 2.3
import QtQuick 2.6
import QtQuick.Controls 2.4
import board 1.0
import move 1.0

ApplicationWindow {
    id: mainWindow
    objectName: "mainWindow"
    visible: true
    width: 300
    height:300
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

    Rectangle {
        id: fon
        objectName: "fon"
        width: parent.width
        height: parent.height
        color: "BurlyWood"

        Item {
            id: board
            objectName: "board"
            anchors. top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: fon.width /18
            anchors.topMargin: fon.height /18
            anchors.rightMargin: fon.width /18
            anchors.bottomMargin: fon.height /18

            Row {
                x: 0
                y: -board.height /16

                Repeater {
                    model: [ "A", "B", "C", "D", "E", "F", "G", "H" ]

                    delegate: Text {
                        width: board.width /8
                        height: board.height /16
                        text: modelData
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: board.height /16
                    }
                }
            }

            Row {
                x: 0
                y: board.height

                Repeater {
                    model: [ "A", "B", "C", "D", "E", "F", "G", "H" ]

                    delegate: Text {
                        width: board.width /8
                        height: board.height /16
                        text: modelData
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: board.height /16
                    }
                }
            }

            Column {
                x: -board.width /16
                y: 0

                Repeater {
                    model: 8

                    delegate: Text {
                        width: board.width /16
                        height: board.height /8
                        text: 8 - index
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: board.height /16
                    }
                }
            }

            Column {
                x: board.width
                y: 0

                Repeater {
                    model: 8

                    delegate: Text {
                        width: board.width /16
                        height: board.height /8
                        text: 8 - index
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: board.height /16
                    }
                }
            }

            Row {

                Repeater {
                    model: 4

                    Column {

                        Repeater {
                            model: 4

                            Grid {
                                rows: 2
                                columns: 2

                                Rectangle { color: "white"; width: board.width /8; height: board.height /8 }
                                Rectangle { color: "gray"; width: board.width /8; height: board.height /8 }
                                Rectangle { color: "gray"; width: board.width /8; height: board.height /8 }
                                Rectangle { color: "white"; width: board.width /8; height: board.height /8 }
                            }
                        }
                    }
                }
            }
        }

        MoveFigure {
            id: moveFigure
        }

        Button {
            id: startGame
            text: qsTr("Выбрать игру")
            font.pixelSize: board.height /16
            width: parent.width /2
            height: parent.height /10
            x: parent.width/2 - parent.width /4
            anchors.bottom: loadGame.top
            anchors.bottomMargin: board.height /4
            onClicked: {
                loader.source = "SelectGame.qml"
                mainWindow.hide()
            }
        }

        Button {
            id: loadGame
            text: qsTr("Продолжить игру")
            font.pixelSize: board.height /16
            width: parent.width /2
            height: parent.height /10
            anchors.centerIn: parent
            onClicked: {
                loader.source = "ContinueGame.qml"
                moveFigure.playerMove();
                mainWindow.hide()
            }
        }

        Button {
            id: closeGame
            text: qsTr("Закрыть игру")
            font.pixelSize: board.height /16
            width: parent.width /2
            height: parent.height /10
            x: parent.width/2 - parent.width /4
            anchors.topMargin: board.height /4
            anchors.top: loadGame.bottom
            onClicked: mainWindow.close()
        }

        Loader {
            id: loader
        }
    }
}
