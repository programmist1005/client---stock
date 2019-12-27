import QtQml.Models 2.3
import QtQuick 2.6
import QtQuick.Controls 2.4
import board 1.0
import move 1.0

ApplicationWindow {
    id: checkmated
    signal signalExit   // Задаём сигнал
    width:300
    height:300
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

    Button {
        text: qsTr("!!!МАТ!!!")
        width: 200
        height: 100
        anchors.centerIn: parent
        onClicked: {
            //loader.source = "Main.qml"
            checkmated.signalExit() // Вызываем сигнал
        }
    }

    Loader {
        id: loader
    }
}
