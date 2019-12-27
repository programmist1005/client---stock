import QtQml.Models 2.3
import QtQuick 2.6
import QtQuick.Controls 2.4
import board 1.0
import move 1.0
import mainClient 1.0

ApplicationWindow {
    id: newGame
    objectName: "newGame"
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

        GridView {
            id: gridView
            objectName: "gridView"
            interactive: false
            cellHeight: height /8
            cellWidth: width /8
            anchors. top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: fon.width /18
            anchors.topMargin: fon.height /18
            anchors.rightMargin: fon.width /18
            anchors.bottomMargin: fon.height /18

            Board {
                id: getOnBoard
            }

            MoveFigure {
                id: moveFigure
            }

            WhiteFigure {
                id: whiteFigure
                title: qsTr("Выбор новой белой фигуры")
                onSignalExit: {
                    sourseListModel.setProperty(mainClient.getOutCtargetNumber(), "sourse", moveFigure.replacePawn());
                    whiteFigure.close()
                    newGame.show()
                }
            }

            BlackFigure {
                id: blackFigure
                title: qsTr("Выбор новой черной фигуры")
                onSignalExit: {
                    sourseListModel.setProperty(mainClient.getOutCtargetNumber(), "sourse", moveFigure.replacePawn());
                    blackFigure.close()
                    newGame.show()
                }
            }

            Checkmated {
                id: checkmated
                title: qsTr("!!!МАТ!!!")
                onSignalExit: {
                    checkmated.close()
                    newGame.show()
                    moveFigure.block()
                }
            }

            MainClient {
                id: mainClient
                onSomeMessage: {

                    var modelSourse = [[(sourseListModel.get(0).sourse),  (sourseListModel.get(1).sourse),  (sourseListModel.get(2).sourse),  (sourseListModel.get(3).sourse),  (sourseListModel.get(4).sourse),  (sourseListModel.get(5).sourse),  (sourseListModel.get(6).sourse),  (sourseListModel.get(7).sourse),
                                        (sourseListModel.get(8).sourse),  (sourseListModel.get(9).sourse),  (sourseListModel.get(10).sourse), (sourseListModel.get(11).sourse), (sourseListModel.get(12).sourse), (sourseListModel.get(13).sourse), (sourseListModel.get(14).sourse), (sourseListModel.get(15).sourse),
                                        (sourseListModel.get(16).sourse), (sourseListModel.get(17).sourse), (sourseListModel.get(18).sourse), (sourseListModel.get(19).sourse), (sourseListModel.get(20).sourse), (sourseListModel.get(21).sourse), (sourseListModel.get(22).sourse), (sourseListModel.get(23).sourse),
                                        (sourseListModel.get(24).sourse), (sourseListModel.get(25).sourse), (sourseListModel.get(26).sourse), (sourseListModel.get(27).sourse), (sourseListModel.get(28).sourse), (sourseListModel.get(29).sourse), (sourseListModel.get(30).sourse), (sourseListModel.get(31).sourse),
                                        (sourseListModel.get(32).sourse), (sourseListModel.get(33).sourse), (sourseListModel.get(34).sourse), (sourseListModel.get(35).sourse), (sourseListModel.get(36).sourse), (sourseListModel.get(37).sourse), (sourseListModel.get(38).sourse), (sourseListModel.get(39).sourse),
                                        (sourseListModel.get(40).sourse), (sourseListModel.get(41).sourse), (sourseListModel.get(42).sourse), (sourseListModel.get(43).sourse), (sourseListModel.get(44).sourse), (sourseListModel.get(45).sourse), (sourseListModel.get(46).sourse), (sourseListModel.get(47).sourse),
                                        (sourseListModel.get(48).sourse), (sourseListModel.get(49).sourse), (sourseListModel.get(50).sourse), (sourseListModel.get(51).sourse), (sourseListModel.get(52).sourse), (sourseListModel.get(53).sourse), (sourseListModel.get(54).sourse), (sourseListModel.get(55).sourse),
                                        (sourseListModel.get(56).sourse), (sourseListModel.get(57).sourse), (sourseListModel.get(58).sourse), (sourseListModel.get(59).sourse), (sourseListModel.get(60).sourse), (sourseListModel.get(61).sourse), (sourseListModel.get(62).sourse), (sourseListModel.get(63).sourse)]];

                    moveFigure.typeFigure(modelSourse);

                    sourseListModel.setProperty(mainClient.getOutCdragNumber(), "sourse", "");
                    sourseListModel.setProperty(moveFigure.move(mainClient.getOutCdragSourse(), mainClient.getOutCdragNumber(), mainClient.getOutCdragI(), mainClient.getOutCdragJ(), mainClient.getOutCtargetSourse(), mainClient.getOutCtargetNumber(), mainClient.getOutCtargetI(), mainClient.getOutCtargetJ()), "sourse", mainClient.getOutCdragSourse());

                    if( moveFigure.take() > 0 ){
                        sourseListModel.setProperty(moveFigure.take(), "sourse", "");
                    }

                    if( moveFigure.replace() === 1 && moveFigure.gamePlayer() === 1 ){
                        whiteFigure.show()  // Открываем окно с белыми фигурами
                        newGame.hide()   // Скрываем основное окно
                    }                          

                    if( moveFigure.replace() === 2 && moveFigure.gamePlayer() === 2 ){
                        blackFigure.show()  // Открываем окно с черными
                        newGame.hide()   // Скрываем основное окно
                    }

                    if( moveFigure.checkmate() === 1 ){
                        checkmated.show()
                        newGame.hide()
                    }

                    var modelHistory = [[(sourseListModel.get(0).sourse),  (sourseListModel.get(1).sourse),  (sourseListModel.get(2).sourse),  (sourseListModel.get(3).sourse),  (sourseListModel.get(4).sourse),  (sourseListModel.get(5).sourse),  (sourseListModel.get(6).sourse),  (sourseListModel.get(7).sourse),
                                         (sourseListModel.get(8).sourse),  (sourseListModel.get(9).sourse),  (sourseListModel.get(10).sourse), (sourseListModel.get(11).sourse), (sourseListModel.get(12).sourse), (sourseListModel.get(13).sourse), (sourseListModel.get(14).sourse), (sourseListModel.get(15).sourse),
                                         (sourseListModel.get(16).sourse), (sourseListModel.get(17).sourse), (sourseListModel.get(18).sourse), (sourseListModel.get(19).sourse), (sourseListModel.get(20).sourse), (sourseListModel.get(21).sourse), (sourseListModel.get(22).sourse), (sourseListModel.get(23).sourse),
                                         (sourseListModel.get(24).sourse), (sourseListModel.get(25).sourse), (sourseListModel.get(26).sourse), (sourseListModel.get(27).sourse), (sourseListModel.get(28).sourse), (sourseListModel.get(29).sourse), (sourseListModel.get(30).sourse), (sourseListModel.get(31).sourse),
                                         (sourseListModel.get(32).sourse), (sourseListModel.get(33).sourse), (sourseListModel.get(34).sourse), (sourseListModel.get(35).sourse), (sourseListModel.get(36).sourse), (sourseListModel.get(37).sourse), (sourseListModel.get(38).sourse), (sourseListModel.get(39).sourse),
                                         (sourseListModel.get(40).sourse), (sourseListModel.get(41).sourse), (sourseListModel.get(42).sourse), (sourseListModel.get(43).sourse), (sourseListModel.get(44).sourse), (sourseListModel.get(45).sourse), (sourseListModel.get(46).sourse), (sourseListModel.get(47).sourse),
                                         (sourseListModel.get(48).sourse), (sourseListModel.get(49).sourse), (sourseListModel.get(50).sourse), (sourseListModel.get(51).sourse), (sourseListModel.get(52).sourse), (sourseListModel.get(53).sourse), (sourseListModel.get(54).sourse), (sourseListModel.get(55).sourse),
                                         (sourseListModel.get(56).sourse), (sourseListModel.get(57).sourse), (sourseListModel.get(58).sourse), (sourseListModel.get(59).sourse), (sourseListModel.get(60).sourse), (sourseListModel.get(61).sourse), (sourseListModel.get(62).sourse), (sourseListModel.get(63).sourse)]];

                    moveFigure.typeFigureHistory(modelHistory);

                    moveFigure.change();

                }
            }

            model: DelegateModel {
                id: visualModel

                model: ListModel {
                    id: sourseListModel
                    objectName: "sourseListModel"

                    Component.onCompleted: {
                        var i;
                        var j;

                        for (i = 0; i<8; ++i){
                            for (j = 0; j<8; ++j){
                                append({ sourse: getOnBoard.getFigure(i,j), i:i, j:j });
                            }
                        }
                    }
                }

                delegate: MouseArea {
                    id: mouseArea
                    objectName: "mouseArea"

                    property bool held: false
                    property int visualIndex: DelegateModel.itemsIndex

                    width: gridView.cellWidth
                    height: gridView.cellHeight

                    drag.target: held ? cell : undefined

                    drag.maximumX: gridView.width - (board.width) /8
                    drag.minimumX: -1
                    drag.maximumY: gridView.height - (board.height) /8
                    drag.minimumY: -1

                    onPressed: {

                        var cellSourse = sourseListModel.get(mouseArea.visualIndex).sourse;

                        if(cellSourse !== "") {
                            held = true
                            cell.opacity = 0.5
                        }
                        if(cellSourse === "") {
                            held = false
                        }
                    }
                    onReleased: {

                        if (held === true) {
                            held = false
                            cell.opacity = 1
                            cell.Drag.drop()
                        } else {
                        }
                    }

                    Image {
                        id: cell
                        objectName: "cell"
                        width: gridView.cellWidth
                        height: gridView.cellHeight
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: model.sourse

                        Drag.active: mouseArea.drag.active
                        Drag.source: mouseArea
                        Drag.hotSpot.x: gridView.cellWidth /2
                        Drag.hotSpot.y: gridView.cellHeight /2

                        states: [
                            State {
                                when: cell.Drag.active

                                ParentChange {
                                    target: cell
                                    parent: gridView
                                }

                                AnchorChanges {
                                    target: cell
                                    anchors.horizontalCenter: undefined
                                    anchors.verticalCenter: undefined
                                }
                            }
                        ]
                    }

                    DropArea {
                        id: dropArea
                        objectName: "dropArea"
                        anchors.fill: parent
                        width: gridView.cellWidth
                        height: gridView.cellHeight

                        onDropped: {

                            var dragSourse = sourseListModel.get(drag.source.visualIndex).sourse;
                            var dragNumber = drag.source.visualIndex;

                            var dragI = sourseListModel.get(drag.source.visualIndex).i;
                            var dragJ = sourseListModel.get(drag.source.visualIndex).j;

                            var targetSourse = sourseListModel.get(mouseArea.visualIndex).sourse;
                            var targetNumber = mouseArea.visualIndex;

                            var targetI = sourseListModel.get(mouseArea.visualIndex).i;
                            var targetJ = sourseListModel.get(mouseArea.visualIndex).j;

                            mainClient.on_send(dragNumber);

                            mainClient.on_send(dragSourse);

                            mainClient.on_send(dragI);

                            mainClient.on_send(dragJ);

                            mainClient.on_send(targetSourse);

                            mainClient.on_send(targetNumber);

                            mainClient.on_send(targetI);

                            mainClient.on_send(targetJ);

                        }
                    }
                }
            }
        }
    }
}
